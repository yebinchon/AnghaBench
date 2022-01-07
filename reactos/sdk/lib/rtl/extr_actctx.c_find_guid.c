
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {int * hActCtx; } ;
typedef TYPE_1__* PACTCTX_SECTION_KEYED_DATA ;
typedef scalar_t__ NTSTATUS ;
typedef int GUID ;
typedef int DWORD ;
typedef int ACTIVATION_CONTEXT ;






 int DPRINT (char*,int) ;
 int FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ STATUS_SXS_SECTION_NOT_FOUND ;
 int actctx_addref (int *) ;
 scalar_t__ find_clr_surrogate (int *,int const*,TYPE_1__*) ;
 scalar_t__ find_cominterface_redirection (int *,int const*,TYPE_1__*) ;
 scalar_t__ find_comserver_redirection (int *,int const*,TYPE_1__*) ;
 scalar_t__ find_tlib_redirection (int *,int const*,TYPE_1__*) ;

__attribute__((used)) static NTSTATUS find_guid(ACTIVATION_CONTEXT* actctx, ULONG section_kind,
                          const GUID *guid, DWORD flags, PACTCTX_SECTION_KEYED_DATA data)
{
    NTSTATUS status;

    switch (section_kind)
    {
    case 128:
        status = find_tlib_redirection(actctx, guid, data);
        break;
    case 129:
        status = find_comserver_redirection(actctx, guid, data);
        break;
    case 130:
        status = find_cominterface_redirection(actctx, guid, data);
        break;
    case 131:
        status = find_clr_surrogate(actctx, guid, data);
        break;
    default:
        DPRINT("Unknown section_kind %x\n", section_kind);
        return STATUS_SXS_SECTION_NOT_FOUND;
    }

    if (status != STATUS_SUCCESS) return status;

    if (flags & FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX)
    {
        actctx_addref(actctx);
        data->hActCtx = actctx;
    }
    return STATUS_SUCCESS;
}
