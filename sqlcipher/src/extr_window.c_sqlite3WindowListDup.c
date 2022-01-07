
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_6__ {struct TYPE_6__* pNextWin; } ;
typedef TYPE_1__ Window ;


 TYPE_1__* sqlite3WindowDup (int *,int ,TYPE_1__*) ;

Window *sqlite3WindowListDup(sqlite3 *db, Window *p){
  Window *pWin;
  Window *pRet = 0;
  Window **pp = &pRet;

  for(pWin=p; pWin; pWin=pWin->pNextWin){
    *pp = sqlite3WindowDup(db, 0, pWin);
    if( *pp==0 ) break;
    pp = &((*pp)->pNextWin);
  }

  return pRet;
}
