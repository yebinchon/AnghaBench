
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct guidsection_header {int size; int count; int index_offset; int magic; } ;
struct guid_index {int dummy; } ;
struct dll_redirect {int entities; } ;
struct assembly {unsigned int num_dlls; struct dll_redirect* dlls; int entities; } ;
typedef int ULONG ;
struct TYPE_3__ {unsigned int num_assemblies; struct assembly* assemblies; } ;
typedef int NTSTATUS ;
typedef int BYTE ;
typedef TYPE_1__ ACTIVATION_CONTEXT ;


 int GUIDSECTION_MAGIC ;
 int NtGetTickCount () ;
 struct guidsection_header* RtlAllocateHeap (int ,int ,unsigned int) ;
 int RtlGetProcessHeap () ;
 int STATUS_NO_MEMORY ;
 int STATUS_SUCCESS ;
 int add_comserver_record (struct guidsection_header*,int *,struct dll_redirect*,struct guid_index**,int*,int*,int*,unsigned int) ;
 int aligned_string_len (unsigned int) ;
 int get_comserver_datalen (int *,struct dll_redirect*,unsigned int*,unsigned int*,unsigned int*) ;
 int memset (struct guidsection_header*,int ,int) ;

__attribute__((used)) static NTSTATUS build_comserver_section(ACTIVATION_CONTEXT* actctx, struct guidsection_header **section)
{
    unsigned int i, j, total_len = 0, class_count = 0, names_len = 0;
    struct guidsection_header *header;
    ULONG module_offset, data_offset;
    struct guid_index *index;
    ULONG seed;


    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];
        get_comserver_datalen(&assembly->entities, ((void*)0), &class_count, &total_len, &names_len);
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            get_comserver_datalen(&dll->entities, dll, &class_count, &total_len, &names_len);
        }
    }

    total_len += aligned_string_len(names_len);
    total_len += sizeof(*header);

    header = RtlAllocateHeap(RtlGetProcessHeap(), 0, total_len);
    if (!header) return STATUS_NO_MEMORY;

    memset(header, 0, sizeof(*header));
    header->magic = GUIDSECTION_MAGIC;
    header->size = sizeof(*header);
    header->count = 2*class_count;
    header->index_offset = sizeof(*header) + aligned_string_len(names_len);
    index = (struct guid_index*)((BYTE*)header + header->index_offset);
    module_offset = sizeof(*header);
    data_offset = header->index_offset + 2*class_count*sizeof(*index);

    seed = NtGetTickCount();
    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];
        add_comserver_record(header, &assembly->entities, ((void*)0), &index, &data_offset, &module_offset, &seed, i+1);
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            add_comserver_record(header, &dll->entities, dll, &index, &data_offset, &module_offset, &seed, i+1);
        }
    }

    *section = header;

    return STATUS_SUCCESS;
}
