if $TRAVIS_BUILD_NUMBER >= 1 && $TRAVIS_BUILD_NUMBER <=10
then
        - docker build -f Dockerfile -t $SAMPLE_TRAVIS_REPO:build-$TRAVIS_BUILD_NUMBER -t $SAMPLE_TRAVIS_REPO:latest .
        - docker push $SAMPLE_TRAVIS_REPO:build-$TRAVIS_BUILD_NUMBER
        - docker push $SAMPLE_TRAVIS_REPO:latest
else
  echo "build number not in specified rang"
fi
