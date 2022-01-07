
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* needInitProp; void* needInitState; int props; scalar_t__ srcPos; int enc; } ;
struct TYPE_5__ {int lzmaProps; } ;
typedef int SizeT ;
typedef int SRes ;
typedef TYPE_1__ CLzma2EncProps ;
typedef TYPE_2__ CLzma2EncInt ;
typedef int Byte ;


 int LZMA_PROPS_SIZE ;
 int LzmaEnc_SetProps (int ,int *) ;
 int LzmaEnc_WriteProperties (int ,int *,int*) ;
 int RINOK (int ) ;
 int SZ_OK ;
 void* True ;

__attribute__((used)) static SRes Lzma2EncInt_Init(CLzma2EncInt *p, const CLzma2EncProps *props)
{
  Byte propsEncoded[LZMA_PROPS_SIZE];
  SizeT propsSize = LZMA_PROPS_SIZE;
  RINOK(LzmaEnc_SetProps(p->enc, &props->lzmaProps));
  RINOK(LzmaEnc_WriteProperties(p->enc, propsEncoded, &propsSize));
  p->srcPos = 0;
  p->props = propsEncoded[0];
  p->needInitState = True;
  p->needInitProp = True;
  return SZ_OK;
}
