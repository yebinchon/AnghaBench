
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bufSizeMax; scalar_t__ malloc; struct TYPE_5__* buf; } ;
typedef TYPE_1__ SReadlineInfo ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void
DisposeSReadlineInfo(SReadlineInfo *srl)
{
 memset(srl->buf, 0, srl->bufSizeMax);
 if (srl->malloc != 0)
  free(srl->buf);
 memset(srl, 0, sizeof(SReadlineInfo));


}
