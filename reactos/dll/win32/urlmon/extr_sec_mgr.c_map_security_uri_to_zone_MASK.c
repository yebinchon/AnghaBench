#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  IUri ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  char* BSTR ;

/* Variables and functions */
 int FUNC0 (char*) ; 
#define  DRIVE_CDROM 134 
#define  DRIVE_FIXED 133 
#define  DRIVE_NO_ROOT_DIR 132 
#define  DRIVE_RAMDISK 131 
#define  DRIVE_REMOTE 130 
#define  DRIVE_REMOVABLE 129 
#define  DRIVE_UNKNOWN 128 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ URLZONE_INTERNET ; 
 scalar_t__ URLZONE_INVALID ; 
 scalar_t__ URLZONE_LOCAL_MACHINE ; 
 int /*<<< orphan*/  fileW ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC8 (char*,scalar_t__*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 char* FUNC11 (char*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC13(IUri *uri, DWORD *zone)
{
    HRESULT hres;
    BSTR scheme;

    *zone = URLZONE_INVALID;

    hres = FUNC5(uri, &scheme);
    if(FUNC1(hres))
        return hres;

    if(!FUNC12(scheme, fileW)) {
        BSTR path;
        WCHAR *ptr, *path_start, root[20];

        hres = FUNC4(uri, &path);
        if(FUNC1(hres)) {
            FUNC6(scheme);
            return hres;
        }

        if(*path == '/' && FUNC9(path+1))
            path_start = path+1;
        else
            path_start = path;

        if((ptr = FUNC11(path_start, ':')) && ptr-path_start+1 < FUNC0(root)) {
            UINT type;

            FUNC10(root, path_start, (ptr-path_start+1)*sizeof(WCHAR));
            root[ptr-path_start+1] = 0;

            type = FUNC3(root);

            switch(type) {
            case DRIVE_UNKNOWN:
            case DRIVE_NO_ROOT_DIR:
                break;
            case DRIVE_REMOVABLE:
            case DRIVE_FIXED:
            case DRIVE_CDROM:
            case DRIVE_RAMDISK:
                *zone = URLZONE_LOCAL_MACHINE;
                hres = S_OK;
                break;
            case DRIVE_REMOTE:
                *zone = URLZONE_INTERNET;
                hres = S_OK;
                break;
            default:
                FUNC2("unsupported drive type %d\n", type);
            }
        }
        FUNC6(path);
    }

    if(*zone == URLZONE_INVALID) {
        hres = FUNC7(uri, zone);
        if(hres == S_FALSE)
            hres = FUNC8(scheme, zone);
    }

    FUNC6(scheme);
    return hres;
}