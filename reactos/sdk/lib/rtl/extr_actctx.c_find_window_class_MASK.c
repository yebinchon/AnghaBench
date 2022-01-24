#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct wndclass_redirect_data {scalar_t__ module_len; scalar_t__ name_len; scalar_t__ size; } ;
struct strsection_header {int dummy; } ;
struct string_index {scalar_t__ hash; int name_offset; int /*<<< orphan*/  rosterindex; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_14__ {int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  scalar_t__ ULONG ;
struct TYPE_16__ {int sections; TYPE_10__* wndclass_section; } ;
struct TYPE_15__ {int ulDataFormatVersion; scalar_t__ cbSize; int /*<<< orphan*/  ulAssemblyRosterIndex; int /*<<< orphan*/ * hActCtx; int /*<<< orphan*/  ulSectionTotalLength; TYPE_10__* lpSectionBase; scalar_t__ ulSectionGlobalDataLength; int /*<<< orphan*/ * lpSectionGlobalData; scalar_t__ ulLength; struct wndclass_redirect_data* lpData; } ;
struct TYPE_13__ {int count; } ;
typedef  TYPE_2__* PACTCTX_SECTION_KEYED_DATA ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  TYPE_3__ ACTIVATION_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  ACTCTX_SECTION_KEYED_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,TYPE_1__ const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASH_STRING_ALGORITHM_X65599 ; 
 scalar_t__ FUNC2 (void**,struct strsection_header*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strsection_header*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_10__*) ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ STATUS_SXS_KEY_NOT_FOUND ; 
 int /*<<< orphan*/  TRUE ; 
 int WINDOWCLASS_SECTION ; 
 scalar_t__ FUNC7 (TYPE_3__*,struct strsection_header**) ; 
 struct wndclass_redirect_data* FUNC8 (TYPE_3__*,struct string_index*) ; 
 struct string_index* FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ulAssemblyRosterIndex ; 

__attribute__((used)) static NTSTATUS FUNC11(ACTIVATION_CONTEXT* actctx, const UNICODE_STRING *name,
                                  PACTCTX_SECTION_KEYED_DATA data)
{
    struct string_index *iter, *index = NULL;
    struct wndclass_redirect_data *class;
    ULONG hash;
    int i;

    if (!(actctx->sections & WINDOWCLASS_SECTION)) return STATUS_SXS_KEY_NOT_FOUND;

    if (!actctx->wndclass_section)
    {
        struct strsection_header *section;

        NTSTATUS status = FUNC7(actctx, &section);
        if (status) return status;

        if (FUNC2((void**)&actctx->wndclass_section, section, NULL))
            FUNC3(FUNC4(), 0, section);
    }

    hash = 0;
    FUNC5(name, TRUE, HASH_STRING_ALGORITHM_X65599, &hash);
    iter = FUNC9(actctx);

    for (i = 0; i < actctx->wndclass_section->count; i++)
    {
        if (iter->hash == hash)
        {
            const WCHAR *nameW = (WCHAR*)((BYTE*)actctx->wndclass_section + iter->name_offset);

            if (!FUNC10(nameW, name->Buffer))
            {
                index = iter;
                break;
            }
            else
                FUNC0("hash collision 0x%08x, %wZ, %S\n", hash, name, nameW);
        }
        iter++;
    }

    if (!index) return STATUS_SXS_KEY_NOT_FOUND;

    if (data)
    {
        class = FUNC8(actctx, index);

        data->ulDataFormatVersion = 1;
        data->lpData = class;
        /* full length includes string length with nulls */
        data->ulLength = class->size + class->name_len + class->module_len + 2*sizeof(WCHAR);
        data->lpSectionGlobalData = NULL;
        data->ulSectionGlobalDataLength = 0;
        data->lpSectionBase = actctx->wndclass_section;
        data->ulSectionTotalLength = FUNC6( FUNC4(), 0, actctx->wndclass_section );
        data->hActCtx = NULL;

        if (data->cbSize >= FUNC1(ACTCTX_SECTION_KEYED_DATA, ulAssemblyRosterIndex) + sizeof(ULONG))
            data->ulAssemblyRosterIndex = index->rosterindex;
    }

    return STATUS_SUCCESS;
}