
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct strsection_header {int size; unsigned int count; unsigned int global_offset; unsigned int global_len; unsigned int index_offset; int magic; } ;
struct string_index {int dummy; } ;
struct dll_redirect {int entities; } ;
struct assembly {unsigned int num_dlls; struct dll_redirect* dlls; int entities; } ;
typedef unsigned int ULONG ;
struct TYPE_4__ {unsigned int num_assemblies; struct assembly* assemblies; } ;
typedef int NTSTATUS ;
typedef int GUID ;
typedef int BYTE ;
typedef TYPE_1__ ACTIVATION_CONTEXT ;


 struct strsection_header* RtlAllocateHeap (int ,int ,unsigned int) ;
 int RtlGetProcessHeap () ;
 int STATUS_NO_MEMORY ;
 int STATUS_SUCCESS ;
 int STRSECTION_MAGIC ;
 int add_progid_record (TYPE_1__*,struct strsection_header*,int *,struct string_index**,unsigned int*,unsigned int*,unsigned int) ;
 int get_progid_datalen (int *,unsigned int*,unsigned int*) ;
 int memset (struct strsection_header*,int ,int) ;

__attribute__((used)) static NTSTATUS build_progid_section(ACTIVATION_CONTEXT* actctx, struct strsection_header **section)
{
    unsigned int i, j, total_len = 0, count = 0;
    struct strsection_header *header;
    ULONG data_offset, global_offset;
    struct string_index *index;


    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];

        get_progid_datalen(&assembly->entities, &count, &total_len);
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            get_progid_datalen(&dll->entities, &count, &total_len);
        }
    }

    total_len += sizeof(*header);

    header = RtlAllocateHeap(RtlGetProcessHeap(), 0, total_len);
    if (!header) return STATUS_NO_MEMORY;

    memset(header, 0, sizeof(*header));
    header->magic = STRSECTION_MAGIC;
    header->size = sizeof(*header);
    header->count = count;
    header->global_offset = header->size;
    header->global_len = count*sizeof(GUID);
    header->index_offset = header->size + header->global_len;

    index = (struct string_index*)((BYTE*)header + header->index_offset);
    data_offset = header->index_offset + count*sizeof(*index);
    global_offset = header->global_offset;

    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];

        add_progid_record(actctx, header, &assembly->entities, &index, &data_offset, &global_offset, i + 1);
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            add_progid_record(actctx, header, &dll->entities, &index, &data_offset, &global_offset, i + 1);
        }
    }

    *section = header;

    return STATUS_SUCCESS;
}
