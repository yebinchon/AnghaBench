
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct wndclass_redirect_data {scalar_t__ module_len; scalar_t__ name_len; scalar_t__ size; } ;
struct strsection_header {int dummy; } ;
struct string_index {scalar_t__ hash; int name_offset; int rosterindex; } ;
typedef int WCHAR ;
struct TYPE_14__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef scalar_t__ ULONG ;
struct TYPE_16__ {int sections; TYPE_10__* wndclass_section; } ;
struct TYPE_15__ {int ulDataFormatVersion; scalar_t__ cbSize; int ulAssemblyRosterIndex; int * hActCtx; int ulSectionTotalLength; TYPE_10__* lpSectionBase; scalar_t__ ulSectionGlobalDataLength; int * lpSectionGlobalData; scalar_t__ ulLength; struct wndclass_redirect_data* lpData; } ;
struct TYPE_13__ {int count; } ;
typedef TYPE_2__* PACTCTX_SECTION_KEYED_DATA ;
typedef scalar_t__ NTSTATUS ;
typedef int BYTE ;
typedef TYPE_3__ ACTIVATION_CONTEXT ;


 int ACTCTX_SECTION_KEYED_DATA ;
 int DPRINT1 (char*,scalar_t__,TYPE_1__ const*,int const*) ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int HASH_STRING_ALGORITHM_X65599 ;
 scalar_t__ InterlockedCompareExchangePointer (void**,struct strsection_header*,int *) ;
 int RtlFreeHeap (int ,int ,struct strsection_header*) ;
 int RtlGetProcessHeap () ;
 int RtlHashUnicodeString (TYPE_1__ const*,int ,int ,scalar_t__*) ;
 int RtlSizeHeap (int ,int ,TYPE_10__*) ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ STATUS_SXS_KEY_NOT_FOUND ;
 int TRUE ;
 int WINDOWCLASS_SECTION ;
 scalar_t__ build_wndclass_section (TYPE_3__*,struct strsection_header**) ;
 struct wndclass_redirect_data* get_wndclass_data (TYPE_3__*,struct string_index*) ;
 struct string_index* get_wndclass_first_index (TYPE_3__*) ;
 int strcmpiW (int const*,int ) ;
 int ulAssemblyRosterIndex ;

__attribute__((used)) static NTSTATUS find_window_class(ACTIVATION_CONTEXT* actctx, const UNICODE_STRING *name,
                                  PACTCTX_SECTION_KEYED_DATA data)
{
    struct string_index *iter, *index = ((void*)0);
    struct wndclass_redirect_data *class;
    ULONG hash;
    int i;

    if (!(actctx->sections & WINDOWCLASS_SECTION)) return STATUS_SXS_KEY_NOT_FOUND;

    if (!actctx->wndclass_section)
    {
        struct strsection_header *section;

        NTSTATUS status = build_wndclass_section(actctx, &section);
        if (status) return status;

        if (InterlockedCompareExchangePointer((void**)&actctx->wndclass_section, section, ((void*)0)))
            RtlFreeHeap(RtlGetProcessHeap(), 0, section);
    }

    hash = 0;
    RtlHashUnicodeString(name, TRUE, HASH_STRING_ALGORITHM_X65599, &hash);
    iter = get_wndclass_first_index(actctx);

    for (i = 0; i < actctx->wndclass_section->count; i++)
    {
        if (iter->hash == hash)
        {
            const WCHAR *nameW = (WCHAR*)((BYTE*)actctx->wndclass_section + iter->name_offset);

            if (!strcmpiW(nameW, name->Buffer))
            {
                index = iter;
                break;
            }
            else
                DPRINT1("hash collision 0x%08x, %wZ, %S\n", hash, name, nameW);
        }
        iter++;
    }

    if (!index) return STATUS_SXS_KEY_NOT_FOUND;

    if (data)
    {
        class = get_wndclass_data(actctx, index);

        data->ulDataFormatVersion = 1;
        data->lpData = class;

        data->ulLength = class->size + class->name_len + class->module_len + 2*sizeof(WCHAR);
        data->lpSectionGlobalData = ((void*)0);
        data->ulSectionGlobalDataLength = 0;
        data->lpSectionBase = actctx->wndclass_section;
        data->ulSectionTotalLength = RtlSizeHeap( RtlGetProcessHeap(), 0, actctx->wndclass_section );
        data->hActCtx = ((void*)0);

        if (data->cbSize >= FIELD_OFFSET(ACTCTX_SECTION_KEYED_DATA, ulAssemblyRosterIndex) + sizeof(ULONG))
            data->ulAssemblyRosterIndex = index->rosterindex;
    }

    return STATUS_SUCCESS;
}
