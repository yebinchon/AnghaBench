
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int aCksum; } ;
struct TYPE_8__ {TYPE_2__ treehdr; TYPE_1__* pShmhdr; } ;
typedef TYPE_3__ lsm_db ;
struct TYPE_9__ {int aCksum; } ;
typedef TYPE_4__ TreeHeader ;
struct TYPE_6__ {TYPE_4__ hdr2; TYPE_4__ hdr1; } ;


 int assert (int) ;
 scalar_t__ memcmp (int ,int ,int) ;

int lsmTreeLoadHeaderOk(lsm_db *pDb, int iRead){
  TreeHeader *p = (iRead==1) ? &pDb->pShmhdr->hdr1 : &pDb->pShmhdr->hdr2;
  assert( iRead==1 || iRead==2 );
  return (0==memcmp(pDb->treehdr.aCksum, p->aCksum, sizeof(u32)*2));
}
