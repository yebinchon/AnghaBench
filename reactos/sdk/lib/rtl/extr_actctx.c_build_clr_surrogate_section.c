
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct guidsection_header {int size; unsigned int count; int index_offset; int magic; } ;
struct guid_index {int data_offset; unsigned int rosterindex; int guid; scalar_t__ data_len; } ;
struct TYPE_7__ {scalar_t__ version; scalar_t__ name; int clsid; } ;
struct TYPE_8__ {TYPE_2__ clrsurrogate; } ;
struct entity {scalar_t__ kind; TYPE_3__ u; } ;
struct clrsurrogate_data {int size; int version_offset; int version_len; int name_offset; int name_len; int clsid; scalar_t__ res; } ;
struct TYPE_6__ {unsigned int num; struct entity* base; } ;
struct assembly {TYPE_1__ entities; } ;
typedef scalar_t__ WCHAR ;
typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_9__ {unsigned int num_assemblies; struct assembly* assemblies; } ;
typedef int NTSTATUS ;
typedef int BYTE ;
typedef TYPE_4__ ACTIVATION_CONTEXT ;


 scalar_t__ ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES ;
 int GUIDSECTION_MAGIC ;
 struct guidsection_header* RtlAllocateHeap (int ,int ,unsigned int) ;
 int RtlGUIDFromString (int *,int *) ;
 int RtlGetProcessHeap () ;
 int RtlInitUnicodeString (int *,int ) ;
 int STATUS_NO_MEMORY ;
 int STATUS_SUCCESS ;
 scalar_t__ aligned_string_len (int) ;
 int memcpy (scalar_t__*,scalar_t__,int) ;
 int memset (struct guidsection_header*,int ,int) ;
 int strlenW (scalar_t__) ;

__attribute__((used)) static NTSTATUS build_clr_surrogate_section(ACTIVATION_CONTEXT* actctx, struct guidsection_header **section)
{
    unsigned int i, j, total_len = 0, count = 0;
    struct guidsection_header *header;
    struct clrsurrogate_data *data;
    struct guid_index *index;
    ULONG data_offset;


    for (i = 0; i < actctx->num_assemblies; i++)
    {
        struct assembly *assembly = &actctx->assemblies[i];
        for (j = 0; j < assembly->entities.num; j++)
        {
            struct entity *entity = &assembly->entities.base[j];
            if (entity->kind == ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES)
            {
                ULONG len;

                total_len += sizeof(*index) + sizeof(*data);
                len = strlenW(entity->u.clrsurrogate.name) + 1;
                if (entity->u.clrsurrogate.version)
                   len += strlenW(entity->u.clrsurrogate.version) + 1;
                total_len += aligned_string_len(len*sizeof(WCHAR));

                count++;
            }
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
        for (j = 0; j < assembly->entities.num; j++)
        {
            struct entity *entity = &assembly->entities.base[j];
            if (entity->kind == ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES)
            {
                ULONG version_len, name_len;
                UNICODE_STRING str;
                WCHAR *ptrW;

                if (entity->u.clrsurrogate.version)
                    version_len = strlenW(entity->u.clrsurrogate.version)*sizeof(WCHAR);
                else
                    version_len = 0;
                name_len = strlenW(entity->u.clrsurrogate.name)*sizeof(WCHAR);


                RtlInitUnicodeString(&str, entity->u.clrsurrogate.clsid);
                RtlGUIDFromString(&str, &index->guid);

                index->data_offset = data_offset;
                index->data_len = sizeof(*data) + aligned_string_len(name_len + sizeof(WCHAR) + (version_len ? version_len + sizeof(WCHAR) : 0));
                index->rosterindex = i + 1;


                data = (struct clrsurrogate_data*)((BYTE*)header + index->data_offset);
                data->size = sizeof(*data);
                data->res = 0;
                data->clsid = index->guid;
                data->version_offset = version_len ? data->size : 0;
                data->version_len = version_len;
                data->name_offset = data->size + version_len;
                if (version_len)
                    data->name_offset += sizeof(WCHAR);
                data->name_len = name_len;


                ptrW = (WCHAR*)((BYTE*)data + data->name_offset);
                memcpy(ptrW, entity->u.clrsurrogate.name, data->name_len);
                ptrW[data->name_len/sizeof(WCHAR)] = 0;


                if (data->version_len)
                {
                    ptrW = (WCHAR*)((BYTE*)data + data->version_offset);
                    memcpy(ptrW, entity->u.clrsurrogate.version, data->version_len);
                    ptrW[data->version_len/sizeof(WCHAR)] = 0;
                }

                data_offset += index->data_offset;
                index++;
            }
        }
    }

    *section = header;

    return STATUS_SUCCESS;
}
