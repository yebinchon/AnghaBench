
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tlibredirect_data {int name_offset; int name_len; } ;
struct ifacepsredirect_data {int tlbid; } ;
typedef int data ;
typedef scalar_t__ WCHAR ;
struct TYPE_3__ {int cbSize; scalar_t__ lpSectionBase; scalar_t__ lpData; } ;
typedef int * REFIID ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;
typedef TYPE_1__ ACTCTX_SECTION_KEYED_DATA ;


 int ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION ;
 int ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION ;
 int ERR (char*,int) ;
 int FALSE ;
 int FindActCtxSectionGuid (int ,int *,int ,int *,TYPE_1__*) ;
 int TRUE ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static BOOL actctx_get_typelib_module(REFIID iid, WCHAR *module, DWORD len)
{
    struct ifacepsredirect_data *iface;
    struct tlibredirect_data *tlib;
    ACTCTX_SECTION_KEYED_DATA data;
    WCHAR *ptrW;

    data.cbSize = sizeof(data);
    if (!FindActCtxSectionGuid(0, ((void*)0), ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION,
            iid, &data))
        return FALSE;

    iface = (struct ifacepsredirect_data *)data.lpData;
    if (!FindActCtxSectionGuid(0, ((void*)0), ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION,
            &iface->tlbid, &data))
        return FALSE;

    tlib = (struct tlibredirect_data *)data.lpData;
    ptrW = (WCHAR *)((BYTE *)data.lpSectionBase + tlib->name_offset);

    if (tlib->name_len/sizeof(WCHAR) >= len)
    {
        ERR("need larger module buffer, %u\n", tlib->name_len);
        return FALSE;
    }

    memcpy(module, ptrW, tlib->name_len);
    module[tlib->name_len/sizeof(WCHAR)] = 0;
    return TRUE;
}
