
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nCol; size_t nPhrase; } ;
typedef TYPE_1__ MatchInfo ;



 char FTS3_MATCHINFO_HITS ;







 int assert (int) ;

__attribute__((used)) static size_t fts3MatchinfoSize(MatchInfo *pInfo, char cArg){
  size_t nVal;

  switch( cArg ){
    case 129:
    case 128:
    case 130:
      nVal = 1;
      break;

    case 135:
    case 133:
    case 134:
      nVal = pInfo->nCol;
      break;

    case 132:
      nVal = pInfo->nCol * pInfo->nPhrase;
      break;

    case 131:
      nVal = pInfo->nPhrase * ((pInfo->nCol + 31) / 32);
      break;

    default:
      assert( cArg==FTS3_MATCHINFO_HITS );
      nVal = pInfo->nCol * pInfo->nPhrase * 3;
      break;
  }

  return nVal;
}
