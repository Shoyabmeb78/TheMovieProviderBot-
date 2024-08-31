if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://themovieproviderbot-1-dzxm.onrender.com
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TheMovieProviderBot
fi
cd /TheMovieProviderBot
pip3 install -U -r requirements.txt
echo "Starting TheMovieProviderBot...."
python3 bot.py
