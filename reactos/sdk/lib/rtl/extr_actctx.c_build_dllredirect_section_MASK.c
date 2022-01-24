#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct strsection_header {int size; unsigned int count; int index_offset; int /*<<< orphan*/  magic; } ;
struct string_index {int name_offset; int name_len; int data_offset; int data_len; unsigned int rosterindex; int /*<<< orphan*/  hash; } ;
struct dllredirect_data {int size; int unk; struct strsection_header* res; } ;
struct dll_redirect {int /*<<< orphan*/  name; } ;
struct assembly {unsigned int num_dlls; struct dll_redirect* dlls; } ;
typedef  scalar_t__ WCHAR ;
typedef  int USHORT ;
struct TYPE_5__ {int Length; int MaximumLength; int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int ULONG ;
struct TYPE_6__ {unsigned int num_assemblies; struct assembly* assemblies; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  TYPE_2__ ACTIVATION_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  HASH_STRING_ALGORITHM_X65599 ; 
 struct strsection_header* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STRSECTION_MAGIC ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct strsection_header*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS FUNC8(ACTIVATION_CONTEXT* actctx, struct strsection_header **section)
{
    unsigned int i, j, total_len = 0, dll_count = 0;
    struct strsection_header *header;
    struct dllredirect_data *data;
    struct string_index *index;
    ULONG name_offset;

    FUNC0("actctx %p, num_assemblies %d\n", actctx, actctx->num_assemblies);

    /* compute section length */
    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];

            /* each entry needs index, data and string data */
            total_len += sizeof(*index);
            total_len += sizeof(*data);
            total_len += FUNC4((FUNC7(dll->name)+1)*sizeof(WCHAR));

            FUNC0("assembly %d (%p), dll %d: dll name %S\n", i, assembly, j, dll->name);
        }

        dll_count += assembly->num_dlls;
    }

    total_len += sizeof(*header);

    header = FUNC1(FUNC2(), 0, total_len);
    if (!header) return STATUS_NO_MEMORY;

    FUNC6(header, 0, sizeof(*header));
    header->magic = STRSECTION_MAGIC;
    header->size  = sizeof(*header);
    header->count = dll_count;
    header->index_offset = sizeof(*header);
    index = (struct string_index*)((BYTE*)header + header->index_offset);
    name_offset = header->index_offset + header->count*sizeof(*index);

    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];

        FUNC0("assembly->num_dlls %d\n", assembly->num_dlls);

        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            UNICODE_STRING str;
            WCHAR *ptrW;

            FUNC0("%d: dll name %S\n", j, dll->name);
            /* setup new index entry */
            str.Buffer = dll->name;
            str.Length = (USHORT)FUNC7(dll->name)*sizeof(WCHAR);
            str.MaximumLength = str.Length + sizeof(WCHAR);
            /* hash original class name */
            FUNC3(&str, TRUE, HASH_STRING_ALGORITHM_X65599, &index->hash);

            index->name_offset = name_offset;
            index->name_len = str.Length;
            index->data_offset = index->name_offset + FUNC4(str.MaximumLength);
            index->data_len = sizeof(*data);
            index->rosterindex = i + 1;

            /* setup data */
            data = (struct dllredirect_data*)((BYTE*)header + index->data_offset);
            data->size = sizeof(*data);
            data->unk = 2; /* FIXME: seems to be constant */
            FUNC6(data->res, 0, sizeof(data->res));

            /* dll name */
            ptrW = (WCHAR*)((BYTE*)header + index->name_offset);
            FUNC5(ptrW, dll->name, index->name_len);
            ptrW[index->name_len/sizeof(WCHAR)] = 0;

            name_offset += sizeof(*data) + FUNC4(str.MaximumLength);

            index++;
        }
    }

    *section = header;

    return STATUS_SUCCESS;
}