if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ganeshkarale212002/Private /Private
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Private
fi
cd /Private
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
