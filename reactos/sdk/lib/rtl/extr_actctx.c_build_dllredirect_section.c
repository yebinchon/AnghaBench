
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct strsection_header {int size; unsigned int count; int index_offset; int magic; } ;
struct string_index {int name_offset; int name_len; int data_offset; int data_len; unsigned int rosterindex; int hash; } ;
struct dllredirect_data {int size; int unk; struct strsection_header* res; } ;
struct dll_redirect {int name; } ;
struct assembly {unsigned int num_dlls; struct dll_redirect* dlls; } ;
typedef scalar_t__ WCHAR ;
typedef int USHORT ;
struct TYPE_5__ {int Length; int MaximumLength; int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_6__ {unsigned int num_assemblies; struct assembly* assemblies; } ;
typedef int NTSTATUS ;
typedef int BYTE ;
typedef TYPE_2__ ACTIVATION_CONTEXT ;


 int DPRINT (char*,...) ;
 int HASH_STRING_ALGORITHM_X65599 ;
 struct strsection_header* RtlAllocateHeap (int ,int ,unsigned int) ;
 int RtlGetProcessHeap () ;
 int RtlHashUnicodeString (TYPE_1__*,int ,int ,int *) ;
 int STATUS_NO_MEMORY ;
 int STATUS_SUCCESS ;
 int STRSECTION_MAGIC ;
 int TRUE ;
 int aligned_string_len (int) ;
 int memcpy (scalar_t__*,int ,int) ;
 int memset (struct strsection_header*,int ,int) ;
 int strlenW (int ) ;

__attribute__((used)) static NTSTATUS build_dllredirect_section(ACTIVATION_CONTEXT* actctx, struct strsection_header **section)
{
    unsigned int i, j, total_len = 0, dll_count = 0;
    struct strsection_header *header;
    struct dllredirect_data *data;
    struct string_index *index;
    ULONG name_offset;

    DPRINT("actctx %p, num_assemblies %d\n", actctx, actctx->num_assemblies);


    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];


            total_len += sizeof(*index);
            total_len += sizeof(*data);
            total_len += aligned_string_len((strlenW(dll->name)+1)*sizeof(WCHAR));

            DPRINT("assembly %d (%p), dll %d: dll name %S\n", i, assembly, j, dll->name);
        }

        dll_count += assembly->num_dlls;
    }

    total_len += sizeof(*header);

    header = RtlAllocateHeap(RtlGetProcessHeap(), 0, total_len);
    if (!header) return STATUS_NO_MEMORY;

    memset(header, 0, sizeof(*header));
    header->magic = STRSECTION_MAGIC;
    header->size = sizeof(*header);
    header->count = dll_count;
    header->index_offset = sizeof(*header);
    index = (struct string_index*)((BYTE*)header + header->index_offset);
    name_offset = header->index_offset + header->count*sizeof(*index);

    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];

        DPRINT("assembly->num_dlls %d\n", assembly->num_dlls);

        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            UNICODE_STRING str;
            WCHAR *ptrW;

            DPRINT("%d: dll name %S\n", j, dll->name);

            str.Buffer = dll->name;
            str.Length = (USHORT)strlenW(dll->name)*sizeof(WCHAR);
            str.MaximumLength = str.Length + sizeof(WCHAR);

            RtlHashUnicodeString(&str, TRUE, HASH_STRING_ALGORITHM_X65599, &index->hash);

            index->name_offset = name_offset;
            index->name_len = str.Length;
            index->data_offset = index->name_offset + aligned_string_len(str.MaximumLength);
            index->data_len = sizeof(*data);
            index->rosterindex = i + 1;


            data = (struct dllredirect_data*)((BYTE*)header + index->data_offset);
            data->size = sizeof(*data);
            data->unk = 2;
            memset(data->res, 0, sizeof(data->res));


            ptrW = (WCHAR*)((BYTE*)header + index->name_offset);
            memcpy(ptrW, dll->name, index->name_len);
            ptrW[index->name_len/sizeof(WCHAR)] = 0;

            name_offset += sizeof(*data) + aligned_string_len(str.MaximumLength);

            index++;
        }
    }

    *section = header;

    return STATUS_SUCCESS;
}
