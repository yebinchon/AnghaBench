
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ iBuf; scalar_t__ iCksumBuf; } ;
typedef TYPE_1__ LogReader ;


 scalar_t__ LSM_CKSUM_MAXDATA ;

__attribute__((used)) static int logRequireCksum(LogReader *p, int nByte){
  return ((p->iBuf + nByte - p->iCksumBuf) > LSM_CKSUM_MAXDATA);
}
