
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int length; int ptr; } ;
struct TYPE_7__ {int length; int * values; } ;
struct TYPE_9__ {TYPE_2__ string; TYPE_1__ array; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_3__ u; } ;
typedef TYPE_4__ json_value ;


 scalar_t__ json_array ;
 TYPE_4__* json_getbyname (int ,char*) ;
 scalar_t__ json_string ;
 char* realloc (char*,size_t) ;
 char* strcat (char*,char*) ;
 char* strdup (int ) ;
 char* strncat (char*,int ,size_t) ;

__attribute__((used)) static char *musicbrainz_fill_artists(const json_value *arraynode)
{
    char *psz = ((void*)0);
    if(arraynode->type != json_array || arraynode->u.array.length < 1)
        return psz;

    size_t i_total = 1;
    for(size_t i=0; i<arraynode->u.array.length; i++)
    {
        const json_value *name = json_getbyname(arraynode->u.array.values[i], "name");
        if(name->type != json_string)
            continue;

        if(psz == ((void*)0))
        {
            psz = strdup(name->u.string.ptr);
            i_total = name->u.string.length + 1;
        }
        else
        {
            char *p = realloc(psz, i_total + name->u.string.length + 2);
            if(p)
            {
                psz = p;
                psz = strcat(psz, ", ");
                psz = strncat(psz, name->u.string.ptr, name->u.string.length);
                i_total += name->u.string.length + 2;
            }
        }
    }

    return psz;
}
