
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct guid_index {int dummy; } ;
struct entity_array {unsigned int num; struct entity* base; } ;
struct TYPE_3__ {scalar_t__ progid; scalar_t__ version; scalar_t__ name; } ;
struct TYPE_4__ {TYPE_1__ comclass; } ;
struct entity {scalar_t__ kind; TYPE_2__ u; } ;
struct dll_redirect {scalar_t__ name; } ;
struct comclassredirect_data {int dummy; } ;
struct clrclass_data {int dummy; } ;
typedef int mscoreeW ;
typedef int mscoree2W ;
typedef int WCHAR ;


 scalar_t__ ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION ;
 scalar_t__ aligned_string_len (int) ;
 int strlenW (scalar_t__) ;

__attribute__((used)) static void get_comserver_datalen(const struct entity_array *entities, const struct dll_redirect *dll,
    unsigned int *count, unsigned int *len, unsigned int *module_len)
{
    unsigned int i;

    for (i = 0; i < entities->num; i++)
    {
        struct entity *entity = &entities->base[i];
        if (entity->kind == ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION)
        {

            *len += 2*sizeof(struct guid_index);


            *len += sizeof(struct comclassredirect_data);


            if (entity->u.comclass.name)
            {
                unsigned int str_len;


                str_len = strlenW(entity->u.comclass.name)+1;
                if (entity->u.comclass.progid)
                    str_len += strlenW(entity->u.comclass.progid)+1;
                if (entity->u.comclass.version)
                    str_len += strlenW(entity->u.comclass.version)+1;

                *len += sizeof(struct clrclass_data);
                *len += aligned_string_len(str_len*sizeof(WCHAR));


                *module_len += sizeof(mscoreeW) + sizeof(mscoree2W);
            }
            else
            {

                if (entity->u.comclass.progid)
                    *len += aligned_string_len((strlenW(entity->u.comclass.progid)+1)*sizeof(WCHAR));

                *module_len += (strlenW(dll->name)+1)*sizeof(WCHAR);
            }

            *count += 1;
        }
    }
}
