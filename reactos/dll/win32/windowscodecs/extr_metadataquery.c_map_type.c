
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct string_t {scalar_t__ len; int str; } ;
typedef int VARTYPE ;
typedef size_t UINT ;
struct TYPE_3__ {scalar_t__ len; int vt; int str; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ CSTR_EQUAL ;
 scalar_t__ CompareStringW (int ,int ,int ,scalar_t__,int ,scalar_t__) ;
 int LOCALE_SYSTEM_DEFAULT ;
 int NORM_IGNORECASE ;
 int VT_ILLEGAL ;
 int WARN (char*,int ) ;
 TYPE_1__* str2vt ;
 int wine_dbgstr_wn (int ,scalar_t__) ;

__attribute__((used)) static VARTYPE map_type(struct string_t *str)
{
    UINT i;

    for (i = 0; i < ARRAY_SIZE(str2vt); i++)
    {
        if (str2vt[i].len == str->len)
        {
            if (CompareStringW(LOCALE_SYSTEM_DEFAULT, NORM_IGNORECASE,
                str->str, str->len, str2vt[i].str, str2vt[i].len) == CSTR_EQUAL)
                return str2vt[i].vt;
        }
    }

    WARN("type %s is not recognized\n", wine_dbgstr_wn(str->str, str->len));

    return VT_ILLEGAL;
}
