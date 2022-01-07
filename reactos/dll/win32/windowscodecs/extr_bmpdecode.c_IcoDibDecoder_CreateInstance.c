
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int BmpDecoder ;


 int BmpDecoder_Create (int ,int ,int **) ;
 int TRUE ;

HRESULT IcoDibDecoder_CreateInstance(BmpDecoder **ppDecoder)
{
    return BmpDecoder_Create(TRUE, TRUE, ppDecoder);
}
