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
struct guidsection_header {int size; int count; int index_offset; int /*<<< orphan*/  magic; } ;
struct guid_index {int dummy; } ;
struct dll_redirect {int /*<<< orphan*/  entities; } ;
struct assembly {unsigned int num_dlls; struct dll_redirect* dlls; int /*<<< orphan*/  entities; } ;
typedef  int ULONG ;
struct TYPE_3__ {unsigned int num_assemblies; struct assembly* assemblies; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  TYPE_1__ ACTIVATION_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  GUIDSECTION_MAGIC ; 
 int FUNC0 () ; 
 struct guidsection_header* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct guidsection_header*,int /*<<< orphan*/ *,struct dll_redirect*,struct guid_index**,int*,int*,int*,unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct dll_redirect*,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct guidsection_header*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static NTSTATUS FUNC7(ACTIVATION_CONTEXT* actctx, struct guidsection_header **section)
{
    unsigned int i, j, total_len = 0, class_count = 0, names_len = 0;
    struct guidsection_header *header;
    ULONG module_offset, data_offset;
    struct guid_index *index;
    ULONG seed;

    /* compute section length */
    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];
        FUNC5(&assembly->entities, NULL, &class_count, &total_len, &names_len);
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            FUNC5(&dll->entities, dll, &class_count, &total_len, &names_len);
        }
    }

    total_len += FUNC4(names_len);
    total_len += sizeof(*header);

    header = FUNC1(FUNC2(), 0, total_len);
    if (!header) return STATUS_NO_MEMORY;

    FUNC6(header, 0, sizeof(*header));
    header->magic = GUIDSECTION_MAGIC;
    header->size  = sizeof(*header);
    header->count = 2*class_count;
    header->index_offset = sizeof(*header) + FUNC4(names_len);
    index = (struct guid_index*)((BYTE*)header + header->index_offset);
    module_offset = sizeof(*header);
    data_offset = header->index_offset + 2*class_count*sizeof(*index);

    seed = FUNC0();
    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];
        FUNC3(header, &assembly->entities, NULL, &index, &data_offset, &module_offset, &seed, i+1);
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            FUNC3(header, &dll->entities, dll, &index, &data_offset, &module_offset, &seed, i+1);
        }
    }

    *section = header;

    return STATUS_SUCCESS;
}