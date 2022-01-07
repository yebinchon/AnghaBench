
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifacepsredirect_data {int size; int name_len; int name_offset; int base; int tlbid; int nummethods; int iid; int mask; } ;
struct guidsection_header {int dummy; } ;
struct guid_index {int data_offset; int data_len; int rosterindex; int guid; } ;
struct entity_array {unsigned int num; struct entity* base; } ;
struct TYPE_3__ {scalar_t__ name; int base; int tlib; int nummethods; int ps32; int mask; int iid; } ;
struct TYPE_4__ {TYPE_1__ ifaceps; } ;
struct entity {scalar_t__ kind; TYPE_2__ u; } ;
typedef scalar_t__ WCHAR ;
typedef int UNICODE_STRING ;
typedef int ULONG ;
typedef int BYTE ;


 scalar_t__ ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION ;
 int RtlGUIDFromString (int *,int *) ;
 int RtlInitUnicodeString (int *,int ) ;
 int aligned_string_len (int) ;
 int memcpy (scalar_t__*,scalar_t__,int) ;
 int memset (int *,int ,int) ;
 int strlenW (scalar_t__) ;

__attribute__((used)) static void add_ifaceps_record(struct guidsection_header *section, struct entity_array *entities,
    struct guid_index **index, ULONG *data_offset, ULONG rosterindex)
{
    unsigned int i;

    for (i = 0; i < entities->num; i++)
    {
        struct entity *entity = &entities->base[i];
        if (entity->kind == ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION)
        {
            struct ifacepsredirect_data *data = (struct ifacepsredirect_data*)((BYTE*)section + *data_offset);
            UNICODE_STRING str;
            ULONG name_len;

            if (entity->u.ifaceps.name)
                name_len = strlenW(entity->u.ifaceps.name)*sizeof(WCHAR);
            else
                name_len = 0;


            RtlInitUnicodeString(&str, entity->u.ifaceps.iid);
            RtlGUIDFromString(&str, &(*index)->guid);
            (*index)->data_offset = *data_offset;
            (*index)->data_len = sizeof(*data) + name_len ? aligned_string_len(name_len + sizeof(WCHAR)) : 0;
            (*index)->rosterindex = rosterindex;


            data->size = sizeof(*data);
            data->mask = entity->u.ifaceps.mask;



            if (entity->u.ifaceps.ps32)
            {
                RtlInitUnicodeString(&str, entity->u.ifaceps.ps32);
                RtlGUIDFromString(&str, &data->iid);
            }
            else
                data->iid = (*index)->guid;

            data->nummethods = entity->u.ifaceps.nummethods;

            if (entity->u.ifaceps.tlib)
            {
                RtlInitUnicodeString(&str, entity->u.ifaceps.tlib);
                RtlGUIDFromString(&str, &data->tlbid);
            }
            else
                memset(&data->tlbid, 0, sizeof(data->tlbid));

            if (entity->u.ifaceps.base)
            {
                RtlInitUnicodeString(&str, entity->u.ifaceps.base);
                RtlGUIDFromString(&str, &data->base);
            }
            else
                memset(&data->base, 0, sizeof(data->base));

            data->name_len = name_len;
            data->name_offset = data->name_len ? sizeof(*data) : 0;


            if (data->name_len)
            {
                WCHAR *ptrW = (WCHAR*)((BYTE*)data + data->name_offset);
                memcpy(ptrW, entity->u.ifaceps.name, data->name_len);
                ptrW[data->name_len/sizeof(WCHAR)] = 0;
            }


            (*index) += 1;
            *data_offset += sizeof(*data);
            if (data->name_len)
                *data_offset += aligned_string_len(data->name_len + sizeof(WCHAR));
        }
    }
}
