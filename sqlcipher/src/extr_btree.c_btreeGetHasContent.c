
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pHasContent; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ BtShared ;
typedef int Bitvec ;


 scalar_t__ sqlite3BitvecSize (int *) ;
 scalar_t__ sqlite3BitvecTest (int *,scalar_t__) ;

__attribute__((used)) static int btreeGetHasContent(BtShared *pBt, Pgno pgno){
  Bitvec *p = pBt->pHasContent;
  return (p && (pgno>sqlite3BitvecSize(p) || sqlite3BitvecTest(p, pgno)));
}
