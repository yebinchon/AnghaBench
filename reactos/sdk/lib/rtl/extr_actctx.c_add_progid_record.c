
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct strsection_header {int dummy; } ;
struct string_index {int dummy; } ;
struct progids {unsigned int num; scalar_t__* progids; } ;
struct guid_index {int dummy; } ;
struct entity_array {unsigned int num; struct entity* base; } ;
struct TYPE_6__ {scalar_t__ progid; int clsid; struct progids progids; } ;
struct TYPE_7__ {TYPE_1__ comclass; } ;
struct entity {scalar_t__ kind; TYPE_2__ u; } ;
struct comclassredirect_data {int alias; } ;
typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_8__ {int comserver_section; } ;
typedef int GUID ;
typedef TYPE_3__ ACTIVATION_CONTEXT ;


 scalar_t__ ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION ;
 int RtlGUIDFromString (int *,int *) ;
 int RtlInitUnicodeString (int *,int ) ;
 struct guid_index* find_guid_index (int ,int *) ;
 struct comclassredirect_data* get_comclass_data (TYPE_3__*,struct guid_index*) ;
 int write_progid_record (struct strsection_header*,scalar_t__,int *,struct string_index**,int *,int *,int ) ;

__attribute__((used)) static void add_progid_record(ACTIVATION_CONTEXT* actctx, struct strsection_header *section, const struct entity_array *entities,
    struct string_index **index, ULONG *data_offset, ULONG *global_offset, ULONG rosterindex)
{
    unsigned int i, j;

    for (i = 0; i < entities->num; i++)
    {
        struct entity *entity = &entities->base[i];
        if (entity->kind == ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION)
        {
            const struct progids *progids = &entity->u.comclass.progids;
            struct comclassredirect_data *comclass;
            struct guid_index *guid_index;
            UNICODE_STRING str;
            GUID clsid;

            RtlInitUnicodeString(&str, entity->u.comclass.clsid);
            RtlGUIDFromString(&str, &clsid);

            guid_index = find_guid_index(actctx->comserver_section, &clsid);
            comclass = get_comclass_data(actctx, guid_index);

            if (entity->u.comclass.progid)
                write_progid_record(section, entity->u.comclass.progid, &comclass->alias,
                     index, data_offset, global_offset, rosterindex);

            for (j = 0; j < progids->num; j++)
                write_progid_record(section, progids->progids[j], &comclass->alias,
                     index, data_offset, global_offset, rosterindex);
        }
    }
}
