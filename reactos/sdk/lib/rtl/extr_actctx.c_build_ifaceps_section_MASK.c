#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct guidsection_header {int size; unsigned int count; int index_offset; int /*<<< orphan*/  magic; } ;
struct guid_index {int dummy; } ;
struct dll_redirect {int /*<<< orphan*/  entities; } ;
struct assembly {unsigned int num_dlls; struct dll_redirect* dlls; int /*<<< orphan*/  entities; } ;
typedef  unsigned int ULONG ;
struct TYPE_3__ {unsigned int num_assemblies; struct assembly* assemblies; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  TYPE_1__ ACTIVATION_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  GUIDSECTION_MAGIC ; 
 struct guidsection_header* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct guidsection_header*,int /*<<< orphan*/ *,struct guid_index**,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct guidsection_header*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static NTSTATUS FUNC5(ACTIVATION_CONTEXT* actctx, struct guidsection_header **section)
{
    unsigned int i, j, total_len = 0, count = 0;
    struct guidsection_header *header;
    struct guid_index *index;
    ULONG data_offset;

    /* compute section length */
    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];

        FUNC3(&assembly->entities, &count, &total_len);
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            FUNC3(&dll->entities, &count, &total_len);
        }
    }

    total_len += sizeof(*header);

    header = FUNC0(FUNC1(), 0, total_len);
    if (!header) return STATUS_NO_MEMORY;

    FUNC4(header, 0, sizeof(*header));
    header->magic = GUIDSECTION_MAGIC;
    header->size  = sizeof(*header);
    header->count = count;
    header->index_offset = sizeof(*header);
    index = (struct guid_index*)((BYTE*)header + header->index_offset);
    data_offset = header->index_offset + count*sizeof(*index);

    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];

        FUNC2(header, &assembly->entities, &index, &data_offset, i + 1);
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            FUNC2(header, &dll->entities, &index, &data_offset, i + 1);
        }
    }

    *section = header;

    return STATUS_SUCCESS;
}