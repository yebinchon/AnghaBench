#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_7__ {int /*<<< orphan*/ * hActCtx; } ;
typedef  TYPE_1__* PACTCTX_SECTION_KEYED_DATA ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  ACTIVATION_CONTEXT ;

/* Variables and functions */
#define  ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES 131 
#define  ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION 130 
#define  ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION 129 
#define  ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ STATUS_SXS_SECTION_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*) ; 

__attribute__((used)) static NTSTATUS FUNC6(ACTIVATION_CONTEXT* actctx, ULONG section_kind,
                          const GUID *guid, DWORD flags, PACTCTX_SECTION_KEYED_DATA data)
{
    NTSTATUS status;

    switch (section_kind)
    {
    case ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION:
        status = FUNC5(actctx, guid, data);
        break;
    case ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION:
        status = FUNC4(actctx, guid, data);
        break;
    case ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION:
        status = FUNC3(actctx, guid, data);
        break;
    case ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES:
        status = FUNC2(actctx, guid, data);
        break;
    default:
        FUNC0("Unknown section_kind %x\n", section_kind);
        return STATUS_SXS_SECTION_NOT_FOUND;
    }

    if (status != STATUS_SUCCESS) return status;

    if (flags & FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX)
    {
        FUNC1(actctx);
        data->hActCtx = actctx;
    }
    return STATUS_SUCCESS;
}