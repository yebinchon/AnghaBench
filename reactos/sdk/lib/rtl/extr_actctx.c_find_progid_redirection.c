
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct strsection_header {int dummy; } ;
struct string_index {int rosterindex; } ;
struct progidredirect_data {int size; } ;
typedef struct strsection_header guidsection_header ;
typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_12__ {int global_offset; int global_len; } ;
struct TYPE_11__ {int sections; TYPE_4__* progid_section; int comserver_section; } ;
struct TYPE_10__ {int ulDataFormatVersion; scalar_t__ cbSize; int ulAssemblyRosterIndex; int * hActCtx; int ulSectionTotalLength; TYPE_4__* lpSectionBase; int ulSectionGlobalDataLength; int * lpSectionGlobalData; int ulLength; struct progidredirect_data* lpData; } ;
typedef TYPE_1__* PACTCTX_SECTION_KEYED_DATA ;
typedef scalar_t__ NTSTATUS ;
typedef int BYTE ;
typedef TYPE_2__ ACTIVATION_CONTEXT ;


 int ACTCTX_SECTION_KEYED_DATA ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,struct strsection_header*,int *) ;
 int PROGIDREDIRECT_SECTION ;
 int RtlFreeHeap (int ,int ,struct strsection_header*) ;
 int RtlGetProcessHeap () ;
 int RtlSizeHeap (int ,int ,TYPE_4__*) ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ STATUS_SXS_KEY_NOT_FOUND ;
 scalar_t__ build_comserver_section (TYPE_2__*,struct strsection_header**) ;
 scalar_t__ build_progid_section (TYPE_2__*,struct strsection_header**) ;
 struct string_index* find_string_index (TYPE_4__*,int const*) ;
 struct progidredirect_data* get_progid_data (TYPE_2__*,struct string_index*) ;
 int ulAssemblyRosterIndex ;

__attribute__((used)) static NTSTATUS find_progid_redirection(ACTIVATION_CONTEXT* actctx, const UNICODE_STRING *name,
                                     PACTCTX_SECTION_KEYED_DATA data)
{
    struct progidredirect_data *progid;
    struct string_index *index;

    if (!(actctx->sections & PROGIDREDIRECT_SECTION)) return STATUS_SXS_KEY_NOT_FOUND;

    if (!actctx->comserver_section)
    {
        struct guidsection_header *section;

        NTSTATUS status = build_comserver_section(actctx, &section);
        if (status) return status;

        if (InterlockedCompareExchangePointer((void**)&actctx->comserver_section, section, ((void*)0)))
            RtlFreeHeap(RtlGetProcessHeap(), 0, section);
    }

    if (!actctx->progid_section)
    {
        struct strsection_header *section;

        NTSTATUS status = build_progid_section(actctx, &section);
        if (status) return status;

        if (InterlockedCompareExchangePointer((void**)&actctx->progid_section, section, ((void*)0)))
            RtlFreeHeap(RtlGetProcessHeap(), 0, section);
    }

    index = find_string_index(actctx->progid_section, name);
    if (!index) return STATUS_SXS_KEY_NOT_FOUND;

    if (data)
    {
        progid = get_progid_data(actctx, index);

        data->ulDataFormatVersion = 1;
        data->lpData = progid;
        data->ulLength = progid->size;
        data->lpSectionGlobalData = (BYTE*)actctx->progid_section + actctx->progid_section->global_offset;
        data->ulSectionGlobalDataLength = actctx->progid_section->global_len;
        data->lpSectionBase = actctx->progid_section;
        data->ulSectionTotalLength = RtlSizeHeap( RtlGetProcessHeap(), 0, actctx->progid_section );
        data->hActCtx = ((void*)0);

        if (data->cbSize >= FIELD_OFFSET(ACTCTX_SECTION_KEYED_DATA, ulAssemblyRosterIndex) + sizeof(ULONG))
            data->ulAssemblyRosterIndex = index->rosterindex;
    }

    return STATUS_SUCCESS;
}
