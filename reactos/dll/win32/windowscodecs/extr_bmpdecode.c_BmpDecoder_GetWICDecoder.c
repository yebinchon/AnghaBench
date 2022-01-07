
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IWICBitmapDecoder_iface; } ;
typedef int IWICBitmapDecoder ;
typedef TYPE_1__ BmpDecoder ;



void BmpDecoder_GetWICDecoder(BmpDecoder *This, IWICBitmapDecoder **ppDecoder)
{
    *ppDecoder = &This->IWICBitmapDecoder_iface;
}
