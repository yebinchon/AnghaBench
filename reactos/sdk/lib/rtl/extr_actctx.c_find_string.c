
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_6__ {int * hActCtx; } ;
typedef TYPE_1__* PACTCTX_SECTION_KEYED_DATA ;
typedef scalar_t__ NTSTATUS ;
typedef int DWORD ;
typedef int ACTIVATION_CONTEXT ;







 int DPRINT1 (char*,int) ;
 int FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ STATUS_SXS_KEY_NOT_FOUND ;
 scalar_t__ STATUS_SXS_SECTION_NOT_FOUND ;
 int actctx_addref (int *) ;
 scalar_t__ find_dll_redirection (int *,int const*,TYPE_1__*) ;
 scalar_t__ find_progid_redirection (int *,int const*,TYPE_1__*) ;
 scalar_t__ find_window_class (int *,int const*,TYPE_1__*) ;

__attribute__((used)) static NTSTATUS find_string(ACTIVATION_CONTEXT* actctx, ULONG section_kind,
                            const UNICODE_STRING *section_name,
                            DWORD flags, PACTCTX_SECTION_KEYED_DATA data)
{
    NTSTATUS status;

    switch (section_kind)
    {
    case 132:
        DPRINT1("Unsupported yet section_kind %x\n", section_kind);
        return STATUS_SXS_KEY_NOT_FOUND;
    case 130:
        status = find_dll_redirection(actctx, section_name, data);
        break;
    case 128:
        status = find_window_class(actctx, section_name, data);
        break;
    case 131:
        status = find_progid_redirection(actctx, section_name, data);
        break;
    case 129:
        DPRINT1("Unsupported yet section_kind %x\n", section_kind);
        return STATUS_SXS_SECTION_NOT_FOUND;
    default:
        DPRINT1("Unknown section_kind %x\n", section_kind);
        return STATUS_SXS_SECTION_NOT_FOUND;
    }

    if (status != STATUS_SUCCESS) return status;

    if (data && (flags & FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX))
    {
        actctx_addref(actctx);
        data->hActCtx = actctx;
    }
    return STATUS_SUCCESS;
}
