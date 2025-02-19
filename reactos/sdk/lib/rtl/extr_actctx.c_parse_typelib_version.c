
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char* ptr; int len; } ;
typedef TYPE_3__ xmlstr_t ;
struct TYPE_6__ {unsigned int major; unsigned int minor; } ;
struct TYPE_7__ {TYPE_1__ typelib; } ;
struct entity {TYPE_2__ u; } ;
typedef char WCHAR ;
typedef int UNICODE_STRING ;
typedef int BOOL ;


 int DPRINT1 (char*,int *) ;
 int FALSE ;
 int TRUE ;
 int xmlstr2unicode (TYPE_3__ const*) ;

__attribute__((used)) static BOOL parse_typelib_version(const xmlstr_t *str, struct entity *entity)
{
    unsigned int ver[2];
    unsigned int pos;
    const WCHAR *curr;
    UNICODE_STRING strW;


    ver[0] = ver[1] = pos = 0;
    for (curr = str->ptr; curr < str->ptr + str->len; curr++)
    {
        if (*curr >= '0' && *curr <= '9')
        {
            ver[pos] = ver[pos] * 10 + *curr - '0';
            if (ver[pos] >= 0x10000) goto error;
        }
        else if (*curr == '.')
        {
            if (++pos >= 2) goto error;
        }
        else goto error;
    }
    entity->u.typelib.major = ver[0];
    entity->u.typelib.minor = ver[1];
    return TRUE;

error:
    strW = xmlstr2unicode(str);
    DPRINT1("FIXME: wrong typelib version value (%wZ)\n", &strW);
    return FALSE;
}
