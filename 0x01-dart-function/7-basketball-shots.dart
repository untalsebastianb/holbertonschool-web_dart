int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  var teamOne = 0;
  var teamTwo = 0;

  teamA.forEach((key, value) {
    switch (key) {
      case 'Free throws':{
        teamOne += value;
        break;
      }
      case '2 pointer':{
        teamOne += value * 2;  
        break;
      }
      case '3 pointer':{
        teamOne += value * 3;
      break;
      }
    }
      
  });

  
  teamB.forEach((key, value) {
    switch (key) {
      case 'Free throws':{
        teamTwo += value;
        break;
      }
      case '2 pointer':{
        teamTwo += value * 2;  
        break;
      }
      case '3 pointer':{
        teamTwo += value * 3;
      break;
      }
    }
      
  });
  
  if (teamOne > teamTwo)
    return 1;
  else if (teamOne == teamTwo)
    return 0;
  else
    return 2;
}