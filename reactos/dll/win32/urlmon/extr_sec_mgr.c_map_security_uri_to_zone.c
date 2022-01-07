
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef int IUri ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;
typedef char* BSTR ;


 int ARRAY_SIZE (char*) ;







 scalar_t__ FAILED (scalar_t__) ;
 int FIXME (char*,int) ;
 int GetDriveTypeW (char*) ;
 scalar_t__ IUri_GetPath (int *,char**) ;
 scalar_t__ IUri_GetSchemeName (int *,char**) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int SysFreeString (char*) ;
 scalar_t__ URLZONE_INTERNET ;
 scalar_t__ URLZONE_INVALID ;
 scalar_t__ URLZONE_LOCAL_MACHINE ;
 int fileW ;
 scalar_t__ get_zone_from_domains (int *,scalar_t__*) ;
 scalar_t__ get_zone_from_reg (char*,scalar_t__*) ;
 scalar_t__ is_drive_path (char*) ;
 int memcpy (char*,char*,int) ;
 char* strchrW (char*,char) ;
 int strcmpiW (char*,int ) ;

__attribute__((used)) static HRESULT map_security_uri_to_zone(IUri *uri, DWORD *zone)
{
    HRESULT hres;
    BSTR scheme;

    *zone = URLZONE_INVALID;

    hres = IUri_GetSchemeName(uri, &scheme);
    if(FAILED(hres))
        return hres;

    if(!strcmpiW(scheme, fileW)) {
        BSTR path;
        WCHAR *ptr, *path_start, root[20];

        hres = IUri_GetPath(uri, &path);
        if(FAILED(hres)) {
            SysFreeString(scheme);
            return hres;
        }

        if(*path == '/' && is_drive_path(path+1))
            path_start = path+1;
        else
            path_start = path;

        if((ptr = strchrW(path_start, ':')) && ptr-path_start+1 < ARRAY_SIZE(root)) {
            UINT type;

            memcpy(root, path_start, (ptr-path_start+1)*sizeof(WCHAR));
            root[ptr-path_start+1] = 0;

            type = GetDriveTypeW(root);

            switch(type) {
            case 128:
            case 132:
                break;
            case 129:
            case 133:
            case 134:
            case 131:
                *zone = URLZONE_LOCAL_MACHINE;
                hres = S_OK;
                break;
            case 130:
                *zone = URLZONE_INTERNET;
                hres = S_OK;
                break;
            default:
                FIXME("unsupported drive type %d\n", type);
            }
        }
        SysFreeString(path);
    }

    if(*zone == URLZONE_INVALID) {
        hres = get_zone_from_domains(uri, zone);
        if(hres == S_FALSE)
            hres = get_zone_from_reg(scheme, zone);
    }

    SysFreeString(scheme);
    return hres;
}
