
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int HRESULT ;


 int BmpDecoder_Construct (int ,int ,int ,void**) ;
 int FALSE ;
 int TRUE ;

HRESULT DibDecoder_CreateInstance(REFIID iid, void** ppv)
{
    return BmpDecoder_Construct(TRUE, FALSE, iid, ppv);
}
