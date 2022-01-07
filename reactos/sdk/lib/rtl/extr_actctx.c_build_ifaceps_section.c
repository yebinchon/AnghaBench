
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct guidsection_header {int size; unsigned int count; int index_offset; int magic; } ;
struct guid_index {int dummy; } ;
struct dll_redirect {int entities; } ;
struct assembly {unsigned int num_dlls; struct dll_redirect* dlls; int entities; } ;
typedef unsigned int ULONG ;
struct TYPE_3__ {unsigned int num_assemblies; struct assembly* assemblies; } ;
typedef int NTSTATUS ;
typedef int BYTE ;
typedef TYPE_1__ ACTIVATION_CONTEXT ;


 int GUIDSECTION_MAGIC ;
 struct guidsection_header* RtlAllocateHeap (int ,int ,unsigned int) ;
 int RtlGetProcessHeap () ;
 int STATUS_NO_MEMORY ;
 int STATUS_SUCCESS ;
 int add_ifaceps_record (struct guidsection_header*,int *,struct guid_index**,unsigned int*,unsigned int) ;
 int get_ifaceps_datalen (int *,unsigned int*,unsigned int*) ;
 int memset (struct guidsection_header*,int ,int) ;

__attribute__((used)) static NTSTATUS build_ifaceps_section(ACTIVATION_CONTEXT* actctx, struct guidsection_header **section)
{
    unsigned int i, j, total_len = 0, count = 0;
    struct guidsection_header *header;
    struct guid_index *index;
    ULONG data_offset;


    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];

        get_ifaceps_datalen(&assembly->entities, &count, &total_len);
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            get_ifaceps_datalen(&dll->entities, &count, &total_len);
        }
    }

    total_len += sizeof(*header);

    header = RtlAllocateHeap(RtlGetProcessHeap(), 0, total_len);
    if (!header) return STATUS_NO_MEMORY;

    memset(header, 0, sizeof(*header));
    header->magic = GUIDSECTION_MAGIC;
    header->size = sizeof(*header);
    header->count = count;
    header->index_offset = sizeof(*header);
    index = (struct guid_index*)((BYTE*)header + header->index_offset);
    data_offset = header->index_offset + count*sizeof(*index);

    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];

        add_ifaceps_record(header, &assembly->entities, &index, &data_offset, i + 1);
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            add_ifaceps_record(header, &dll->entities, &index, &data_offset, i + 1);
        }
    }

    *section = header;

    return STATUS_SUCCESS;
}
