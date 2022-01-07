
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IBackgroundCopyManager ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_LOCAL_SERVER ;
 int CLSID_BackgroundCopyManager ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int ERROR_SERVICE_DISABLED ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 int IBackgroundCopyManager_Release (int *) ;
 int IID_IBackgroundCopyManager ;
 scalar_t__ S_OK ;
 int win_skip (char*) ;

__attribute__((used)) static HRESULT test_create_manager(void)
{
    HRESULT hres;
    IBackgroundCopyManager *manager = ((void*)0);


    hres = CoCreateInstance(&CLSID_BackgroundCopyManager, ((void*)0), CLSCTX_LOCAL_SERVER,
                            &IID_IBackgroundCopyManager, (void **) &manager);

    if(hres == HRESULT_FROM_WIN32(ERROR_SERVICE_DISABLED)) {
        win_skip("Needed Service is disabled\n");
        return hres;
    }

    if (hres == S_OK)
        IBackgroundCopyManager_Release(manager);

    return hres;
}
