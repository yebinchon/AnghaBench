
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int aCksum ;
struct TYPE_4__ {int aCksum; } ;
typedef TYPE_1__ TreeHeader ;


 scalar_t__ memcmp (int *,int ,int) ;
 int treeHeaderChecksum (TYPE_1__*,int *) ;

__attribute__((used)) static int treeHeaderChecksumOk(TreeHeader *pHdr){
  u32 aCksum[2];
  treeHeaderChecksum(pHdr, aCksum);
  return (0==memcmp(aCksum, pHdr->aCksum, sizeof(aCksum)));
}
