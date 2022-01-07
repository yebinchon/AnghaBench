
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int url ;
typedef int buf ;
typedef int WCHAR ;
typedef scalar_t__ ULONG ;
typedef int IInternetProtocol ;
typedef scalar_t__ HRESULT ;
typedef int BYTE ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_ResProtocol ;
 int CP_ACP ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IID_IInternetProtocol ;
 scalar_t__ IInternetProtocol_Read (int *,int *,int,scalar_t__*) ;
 scalar_t__ IInternetProtocol_Release (int *) ;
 scalar_t__ IInternetProtocol_Terminate (int *,int ) ;
 int INTERNET_MAX_URL_LENGTH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 scalar_t__ S_OK ;
 int memcpy (int *,int ,int) ;
 int ok (int,char*,scalar_t__) ;
 int protocol_start (int *,int *) ;
 int res_url_base ;
 int res_url_base_len ;

__attribute__((used)) static void test_res_url(const char *url_suffix)
{
    WCHAR url[INTERNET_MAX_URL_LENGTH];
    IInternetProtocol *protocol;
    ULONG size, ref;
    BYTE buf[100];
    HRESULT hres;

    memcpy(url, res_url_base, res_url_base_len*sizeof(WCHAR));
    MultiByteToWideChar(CP_ACP, 0, url_suffix, -1, url+res_url_base_len, sizeof(url)/sizeof(WCHAR)-res_url_base_len);

    hres = CoCreateInstance(&CLSID_ResProtocol, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IInternetProtocol, (void**)&protocol);
    ok(hres == S_OK, "Could not create ResProtocol instance: %08x\n", hres);

    protocol_start(protocol, url);

    hres = IInternetProtocol_Read(protocol, buf, sizeof(buf), &size);
    ok(hres == S_OK, "Read failed: %08x\n", hres);

    hres = IInternetProtocol_Terminate(protocol, 0);
    ok(hres == S_OK, "Terminate failed: %08x\n", hres);


    ref = IInternetProtocol_Release(protocol);
    ok(!ref, "ref=%u\n", ref);
}
