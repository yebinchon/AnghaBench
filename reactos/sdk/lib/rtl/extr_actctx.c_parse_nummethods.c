
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char* ptr; int len; } ;
typedef TYPE_3__ xmlstr_t ;
struct TYPE_6__ {int nummethods; } ;
struct TYPE_7__ {TYPE_1__ ifaceps; } ;
struct entity {TYPE_2__ u; } ;
typedef char WCHAR ;
typedef int UNICODE_STRING ;
typedef int ULONG ;
typedef int BOOL ;


 int DPRINT1 (char*,int *) ;
 int FALSE ;
 int TRUE ;
 int xmlstr2unicode (TYPE_3__ const*) ;

__attribute__((used)) static BOOL parse_nummethods(const xmlstr_t *str, struct entity *entity)
{
    const WCHAR *curr;
    ULONG num = 0;

    for (curr = str->ptr; curr < str->ptr + str->len; curr++)
    {
        if (*curr >= '0' && *curr <= '9')
            num = num * 10 + *curr - '0';
        else
        {
            UNICODE_STRING strU = xmlstr2unicode(str);
            DPRINT1("wrong numeric value %wZ\n", &strU);
            return FALSE;
        }
    }
    entity->u.ifaceps.nummethods = num;

    return TRUE;
}
