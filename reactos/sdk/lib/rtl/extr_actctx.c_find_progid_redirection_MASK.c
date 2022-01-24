#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct strsection_header {int dummy; } ;
struct string_index {int /*<<< orphan*/  rosterindex; } ;
struct progidredirect_data {int /*<<< orphan*/  size; } ;
typedef  struct strsection_header guidsection_header ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_12__ {int global_offset; int /*<<< orphan*/  global_len; } ;
struct TYPE_11__ {int sections; TYPE_4__* progid_section; int /*<<< orphan*/  comserver_section; } ;
struct TYPE_10__ {int ulDataFormatVersion; scalar_t__ cbSize; int /*<<< orphan*/  ulAssemblyRosterIndex; int /*<<< orphan*/ * hActCtx; int /*<<< orphan*/  ulSectionTotalLength; TYPE_4__* lpSectionBase; int /*<<< orphan*/  ulSectionGlobalDataLength; int /*<<< orphan*/ * lpSectionGlobalData; int /*<<< orphan*/  ulLength; struct progidredirect_data* lpData; } ;
typedef  TYPE_1__* PACTCTX_SECTION_KEYED_DATA ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  TYPE_2__ ACTIVATION_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  ACTCTX_SECTION_KEYED_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void**,struct strsection_header*,int /*<<< orphan*/ *) ; 
 int PROGIDREDIRECT_SECTION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strsection_header*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ STATUS_SXS_KEY_NOT_FOUND ; 
 scalar_t__ FUNC5 (TYPE_2__*,struct strsection_header**) ; 
 scalar_t__ FUNC6 (TYPE_2__*,struct strsection_header**) ; 
 struct string_index* FUNC7 (TYPE_4__*,int /*<<< orphan*/  const*) ; 
 struct progidredirect_data* FUNC8 (TYPE_2__*,struct string_index*) ; 
 int /*<<< orphan*/  ulAssemblyRosterIndex ; 

__attribute__((used)) static NTSTATUS FUNC9(ACTIVATION_CONTEXT* actctx, const UNICODE_STRING *name,
                                     PACTCTX_SECTION_KEYED_DATA data)
{
    struct progidredirect_data *progid;
    struct string_index *index;

    if (!(actctx->sections & PROGIDREDIRECT_SECTION)) return STATUS_SXS_KEY_NOT_FOUND;

    if (!actctx->comserver_section)
    {
        struct guidsection_header *section;

        NTSTATUS status = FUNC5(actctx, &section);
        if (status) return status;

        if (FUNC1((void**)&actctx->comserver_section, section, NULL))
            FUNC2(FUNC3(), 0, section);
    }

    if (!actctx->progid_section)
    {
        struct strsection_header *section;

        NTSTATUS status = FUNC6(actctx, &section);
        if (status) return status;

        if (FUNC1((void**)&actctx->progid_section, section, NULL))
            FUNC2(FUNC3(), 0, section);
    }

    index = FUNC7(actctx->progid_section, name);
    if (!index) return STATUS_SXS_KEY_NOT_FOUND;

    if (data)
    {
        progid = FUNC8(actctx, index);

        data->ulDataFormatVersion = 1;
        data->lpData = progid;
        data->ulLength = progid->size;
        data->lpSectionGlobalData = (BYTE*)actctx->progid_section + actctx->progid_section->global_offset;
        data->ulSectionGlobalDataLength = actctx->progid_section->global_len;
        data->lpSectionBase = actctx->progid_section;
        data->ulSectionTotalLength = FUNC4( FUNC3(), 0, actctx->progid_section );
        data->hActCtx = NULL;

        if (data->cbSize >= FUNC0(ACTCTX_SECTION_KEYED_DATA, ulAssemblyRosterIndex) + sizeof(ULONG))
            data->ulAssemblyRosterIndex = index->rosterindex;
    }

    return STATUS_SUCCESS;
}