
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wndclass_redirect_data {int name_offset; } ;
typedef int data ;
typedef int WCHAR ;
struct TYPE_4__ {int cbSize; scalar_t__ lpData; } ;
typedef int BYTE ;
typedef int BOOL ;
typedef TYPE_1__ ACTCTX_SECTION_KEYED_DATA ;


 int ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION ;
 int FindActCtxSectionStringW (int ,int *,int ,int const*,TYPE_1__*) ;
 int GetLastError () ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static WCHAR* get_versioned_classname(const WCHAR *name)
{
    struct wndclass_redirect_data *wnddata;
    ACTCTX_SECTION_KEYED_DATA data;
    BOOL ret;

    memset(&data, 0, sizeof(data));
    data.cbSize = sizeof(data);
    ret = FindActCtxSectionStringW(0, ((void*)0), ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION, name, &data);
    ok(ret, "Failed to find class redirection section, error %u\n", GetLastError());
    wnddata = (struct wndclass_redirect_data*)data.lpData;
    return (WCHAR*)((BYTE*)wnddata + wnddata->name_offset);
}
