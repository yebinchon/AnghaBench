
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int codepage; } ;
typedef TYPE_1__ string_table ;
typedef int UINT ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 scalar_t__ validate_codepage (int ) ;

UINT msi_set_string_table_codepage( string_table *st, UINT codepage )
{
    if (validate_codepage( codepage ))
    {
        st->codepage = codepage;
        return ERROR_SUCCESS;
    }
    return ERROR_FUNCTION_FAILED;
}
