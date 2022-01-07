
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bufLim; scalar_t__ bufPtr; scalar_t__ bufSizeMax; scalar_t__ buf; scalar_t__ bufSize; } ;
typedef TYPE_1__ SReadlineInfo ;


 int memset (scalar_t__,int ,scalar_t__) ;

void
FlushSReadlineInfo(SReadlineInfo *srl)
{



 srl->bufSize = srl->bufSizeMax;
 memset(srl->buf, 0, srl->bufSize);
 srl->bufLim = srl->buf + srl->bufSizeMax;





 srl->bufPtr = srl->bufLim;
}
