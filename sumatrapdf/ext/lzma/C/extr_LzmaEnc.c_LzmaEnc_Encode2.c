
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ finished; int rc; int nowPos64; } ;
struct TYPE_8__ {scalar_t__ (* Progress ) (TYPE_1__*,int ,int ) ;} ;
typedef scalar_t__ SRes ;
typedef TYPE_1__ ICompressProgress ;
typedef TYPE_2__ CLzmaEnc ;
typedef scalar_t__ Byte ;


 int False ;
 scalar_t__ LzmaEnc_CodeOneBlock (TYPE_2__*,int ,int ,int ) ;
 int LzmaEnc_Finish (TYPE_2__*) ;
 int RangeEnc_GetProcessed (int *) ;
 scalar_t__ SZ_ERROR_PROGRESS ;
 scalar_t__ SZ_OK ;
 scalar_t__ stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static SRes LzmaEnc_Encode2(CLzmaEnc *p, ICompressProgress *progress)
{
  SRes res = SZ_OK;


  Byte allocaDummy[0x300];
  int i = 0;
  for (i = 0; i < 16; i++)
    allocaDummy[i] = (Byte)i;


  for (;;)
  {
    res = LzmaEnc_CodeOneBlock(p, False, 0, 0);
    if (res != SZ_OK || p->finished != 0)
      break;
    if (progress != 0)
    {
      res = progress->Progress(progress, p->nowPos64, RangeEnc_GetProcessed(&p->rc));
      if (res != SZ_OK)
      {
        res = SZ_ERROR_PROGRESS;
        break;
      }
    }
  }
  LzmaEnc_Finish(p);
  return res;
}
