
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tlibredirect_data {int size; int name_len; int name_offset; int help_len; int help_offset; int minor_version; int major_version; int flags; scalar_t__ langid; scalar_t__ res; } ;
struct guidsection_header {int size; unsigned int count; int index_offset; int magic; } ;
struct guid_index {int data_offset; int data_len; unsigned int rosterindex; int guid; } ;
struct TYPE_7__ {scalar_t__* helpdir; int minor; int major; int flags; int tlbid; } ;
struct TYPE_8__ {TYPE_2__ typelib; } ;
struct entity {scalar_t__ kind; TYPE_3__ u; } ;
struct TYPE_6__ {unsigned int num; struct entity* base; } ;
struct dll_redirect {scalar_t__* name; TYPE_1__ entities; } ;
struct assembly {unsigned int num_dlls; struct dll_redirect* dlls; } ;
typedef scalar_t__ WCHAR ;
typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_9__ {unsigned int num_assemblies; struct assembly* assemblies; } ;
typedef int NTSTATUS ;
typedef int BYTE ;
typedef TYPE_4__ ACTIVATION_CONTEXT ;


 scalar_t__ ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION ;
 int GUIDSECTION_MAGIC ;
 struct guidsection_header* RtlAllocateHeap (int ,int ,unsigned int) ;
 int RtlGUIDFromString (int *,int *) ;
 int RtlGetProcessHeap () ;
 int RtlInitUnicodeString (int *,int ) ;
 int STATUS_NO_MEMORY ;
 int STATUS_SUCCESS ;
 int aligned_string_len (int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memset (struct guidsection_header*,int ,int) ;
 int strlenW (scalar_t__*) ;

__attribute__((used)) static NTSTATUS build_tlib_section(ACTIVATION_CONTEXT* actctx, struct guidsection_header **section)
{
    unsigned int i, j, k, total_len = 0, tlib_count = 0, names_len = 0;
    struct guidsection_header *header;
    ULONG module_offset, data_offset;
    struct tlibredirect_data *data;
    struct guid_index *index;


    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            for (k = 0; k < dll->entities.num; k++)
            {
                struct entity *entity = &dll->entities.base[k];
                if (entity->kind == ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION)
                {

                    total_len += sizeof(*index);
                    total_len += sizeof(*data);

                    if (*entity->u.typelib.helpdir)
                        total_len += aligned_string_len((strlenW(entity->u.typelib.helpdir)+1)*sizeof(WCHAR));


                    names_len += (strlenW(dll->name)+1)*sizeof(WCHAR);

                    tlib_count++;
                }
            }
        }
    }

    total_len += aligned_string_len(names_len);
    total_len += sizeof(*header);

    header = RtlAllocateHeap(RtlGetProcessHeap(), 0, total_len);
    if (!header) return STATUS_NO_MEMORY;

    memset(header, 0, sizeof(*header));
    header->magic = GUIDSECTION_MAGIC;
    header->size = sizeof(*header);
    header->count = tlib_count;
    header->index_offset = sizeof(*header) + aligned_string_len(names_len);
    index = (struct guid_index*)((BYTE*)header + header->index_offset);
    module_offset = sizeof(*header);
    data_offset = header->index_offset + tlib_count*sizeof(*index);

    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];
        for (j = 0; j < assembly->num_dlls; j++)
        {
            struct dll_redirect *dll = &assembly->dlls[j];
            for (k = 0; k < dll->entities.num; k++)
            {
                struct entity *entity = &dll->entities.base[k];
                if (entity->kind == ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION)
                {
                    ULONG module_len, help_len;
                    UNICODE_STRING str;
                    WCHAR *ptrW;

                    if (*entity->u.typelib.helpdir)
                        help_len = strlenW(entity->u.typelib.helpdir)*sizeof(WCHAR);
                    else
                        help_len = 0;

                    module_len = strlenW(dll->name)*sizeof(WCHAR);


                    RtlInitUnicodeString(&str, entity->u.typelib.tlbid);
                    RtlGUIDFromString(&str, &index->guid);
                    index->data_offset = data_offset;
                    index->data_len = sizeof(*data) + aligned_string_len(help_len);
                    index->rosterindex = i + 1;


                    data = (struct tlibredirect_data*)((BYTE*)header + index->data_offset);
                    data->size = sizeof(*data);
                    data->res = 0;
                    data->name_len = module_len;
                    data->name_offset = module_offset;

                    data->langid = 0;
                    data->flags = entity->u.typelib.flags;
                    data->help_len = help_len;
                    data->help_offset = sizeof(*data);
                    data->major_version = entity->u.typelib.major;
                    data->minor_version = entity->u.typelib.minor;


                    ptrW = (WCHAR*)((BYTE*)header + data->name_offset);
                    memcpy(ptrW, dll->name, data->name_len);
                    ptrW[data->name_len/sizeof(WCHAR)] = 0;


                    if (data->help_len)
                    {
                        ptrW = (WCHAR*)((BYTE*)data + data->help_offset);
                        memcpy(ptrW, entity->u.typelib.helpdir, data->help_len);
                        ptrW[data->help_len/sizeof(WCHAR)] = 0;
                    }

                    data_offset += sizeof(*data);
                    if (help_len)
                        data_offset += aligned_string_len(help_len + sizeof(WCHAR));

                    module_offset += module_len + sizeof(WCHAR);

                    index++;
                }
            }
        }
    }

    *section = header;

    return STATUS_SUCCESS;
}
