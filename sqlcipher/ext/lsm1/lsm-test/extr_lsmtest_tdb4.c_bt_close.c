
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_6__ {TYPE_1__** apFile; int aBuffer; int pBt; } ;
struct TYPE_5__ {scalar_t__ pBt; } ;
typedef TYPE_2__ BtDb ;


 int bgc_detach (TYPE_2__*) ;
 int free (int ) ;
 int sqlite4BtClose (int ) ;
 int testFree (TYPE_2__*) ;

__attribute__((used)) static int bt_close(TestDb *pTestDb){
  BtDb *p = (BtDb*)pTestDb;
  int rc = sqlite4BtClose(p->pBt);
  free(p->aBuffer);
  if( p->apFile[0] ) p->apFile[0]->pBt = 0;
  if( p->apFile[1] ) p->apFile[1]->pBt = 0;
  bgc_detach(p);
  testFree(p);
  return rc;
}
