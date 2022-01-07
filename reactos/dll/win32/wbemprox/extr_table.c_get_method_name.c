
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table {size_t num_cols; TYPE_1__* columns; } ;
typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_2__ {int type; int name; } ;
typedef int * BSTR ;


 int COL_FLAG_METHOD ;
 int * SysAllocString (int ) ;
 struct table* grab_table (int const*) ;
 int release_table (struct table*) ;

BSTR get_method_name( const WCHAR *class, UINT index )
{
    struct table *table;
    UINT i, count = 0;
    BSTR ret;

    if (!(table = grab_table( class ))) return ((void*)0);

    for (i = 0; i < table->num_cols; i++)
    {
        if (table->columns[i].type & COL_FLAG_METHOD)
        {
            if (index == count)
            {
                ret = SysAllocString( table->columns[i].name );
                release_table( table );
                return ret;
            }
            count++;
        }
    }
    release_table( table );
    return ((void*)0);
}
