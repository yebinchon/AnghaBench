
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int HRESULT ;


 int ERR (char*) ;
 int E_FAIL ;

HRESULT JpegEncoder_CreateInstance(REFIID iid, void** ppv)
{
    ERR("Trying to save JPEG picture, but JPEG support is not compiled in.\n");
    return E_FAIL;
}
