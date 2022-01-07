
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_4__ {int len; } ;
typedef TYPE_1__ FORMSTR ;
typedef int FORMAT ;


 int get_formstr_data (int *,TYPE_1__*) ;
 int memcpy (scalar_t__*,int ,int) ;
 scalar_t__* msi_alloc (int) ;

__attribute__((used)) static WCHAR *dup_formstr( FORMAT *format, FORMSTR *str, int *ret_len )
{
    WCHAR *val;

    if (!str->len) return ((void*)0);
    if ((val = msi_alloc( (str->len + 1) * sizeof(WCHAR) )))
    {
        memcpy( val, get_formstr_data(format, str), str->len * sizeof(WCHAR) );
        val[str->len] = 0;
        *ret_len = str->len;
    }
    return val;
}
