
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int codepage; } ;
typedef TYPE_1__ string_table ;
typedef int UINT ;



UINT msi_get_string_table_codepage( const string_table *st )
{
    return st->codepage;
}
