
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int TestDb ;
struct TYPE_3__ {int nRow; scalar_t__ cksum2; scalar_t__ cksum1; } ;
typedef TYPE_1__ Cksum ;


 scalar_t__ TEST_CKSUM_BYTES ;
 int assert (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int scanCksumDb ;
 int sprintf (char*,char*,int,int,int) ;
 scalar_t__ strlen (char*) ;
 int tdb_scan (int *,void*,int ,int ,int ,int ,int ,int ) ;

int testCksumDatabase(
  TestDb *pDb,
  char *zOut
){
  Cksum cksum;
  memset(&cksum, 0, sizeof(Cksum));
  tdb_scan(pDb, (void *)&cksum, 0, 0, 0, 0, 0, scanCksumDb);
  sprintf(zOut, "%d %x %x",
      cksum.nRow, (u32)cksum.cksum1, (u32)cksum.cksum2
  );
  assert( strlen(zOut)<TEST_CKSUM_BYTES );
  return cksum.nRow;
}
