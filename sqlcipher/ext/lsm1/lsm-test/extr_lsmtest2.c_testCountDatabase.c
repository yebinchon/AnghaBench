
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_3__ {int nRow; } ;
typedef TYPE_1__ Cksum ;


 int memset (TYPE_1__*,int ,int) ;
 int scanCountDb ;
 int tdb_scan (int *,void*,int ,int ,int ,int ,int ,int ) ;

int testCountDatabase(TestDb *pDb){
  Cksum cksum;
  memset(&cksum, 0, sizeof(Cksum));
  tdb_scan(pDb, (void *)&cksum, 0, 0, 0, 0, 0, scanCountDb);
  return cksum.nRow;
}
