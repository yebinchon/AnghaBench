
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUri ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IUri_GetScheme (int *,int*) ;
 int TRUE ;







__attribute__((used)) static BOOL is_urlmon_protocol(IUri *uri)
{
    DWORD scheme;
    HRESULT hres;

    hres = IUri_GetScheme(uri, &scheme);
    if(FAILED(hres))
        return FALSE;

    switch(scheme) {
    case 133:
    case 132:
    case 131:
    case 130:
    case 129:
    case 128:
        return TRUE;
    }

    return FALSE;
}
