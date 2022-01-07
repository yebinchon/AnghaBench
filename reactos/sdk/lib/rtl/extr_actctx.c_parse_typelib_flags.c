
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char* ptr; int len; } ;
typedef TYPE_3__ xmlstr_t ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ typelib; } ;
struct entity {TYPE_2__ u; } ;
typedef int WORD ;
typedef char WCHAR ;
typedef int UNICODE_STRING ;
typedef int BOOL ;


 int DPRINT1 (char*,int *) ;
 int FALSE ;
 int LIBFLAG_FCONTROL ;
 int LIBFLAG_FHASDISKIMAGE ;
 int LIBFLAG_FHIDDEN ;
 int LIBFLAG_FRESTRICTED ;
 int TRUE ;
 int controlW ;
 int hasdiskimageW ;
 int hiddenW ;
 int restrictedW ;
 int strncmpiW (char const*,int ,int) ;
 int xmlstr2unicode (TYPE_3__ const*) ;

__attribute__((used)) static BOOL parse_typelib_flags(const xmlstr_t *value, struct entity *entity)
{
    WORD *flags = &entity->u.typelib.flags;
    const WCHAR *str = value->ptr, *start;
    int i = 0;

    *flags = 0;


    while (i < value->len)
    {
        start = str;
        while (*str != ',' && (i++ < value->len)) str++;

        if (!strncmpiW(start, restrictedW, str-start))
            *flags |= LIBFLAG_FRESTRICTED;
        else if (!strncmpiW(start, controlW, str-start))
            *flags |= LIBFLAG_FCONTROL;
        else if (!strncmpiW(start, hiddenW, str-start))
            *flags |= LIBFLAG_FHIDDEN;
        else if (!strncmpiW(start, hasdiskimageW, str-start))
            *flags |= LIBFLAG_FHASDISKIMAGE;
        else
        {
            UNICODE_STRING valueU = xmlstr2unicode(value);
            DPRINT1("unknown flags value %wZ\n", &valueU);
            return FALSE;
        }


        str++;
        i++;
    }

    return TRUE;
}
