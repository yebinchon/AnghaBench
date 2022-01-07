
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IWbemPath ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_WbemDefPath ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IID_IWbemPath ;
 scalar_t__ S_OK ;
 int win_skip (char*) ;

__attribute__((used)) static IWbemPath *create_path(void)
{
    HRESULT hr;
    IWbemPath *path;

    hr = CoCreateInstance( &CLSID_WbemDefPath, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IWbemPath, (void **)&path );
    if (hr != S_OK)
    {
        win_skip( "can't create WbemDefPath instance, skipping tests\n" );
        return ((void*)0);
    }
    return path;
}
