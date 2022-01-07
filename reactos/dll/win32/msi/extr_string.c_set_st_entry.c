
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t maxcount; size_t freeslot; TYPE_1__* strings; } ;
typedef TYPE_2__ string_table ;
typedef enum StringPersistence { ____Placeholder_StringPersistence } StringPersistence ;
typedef int WCHAR ;
typedef void* USHORT ;
typedef size_t UINT ;
struct TYPE_5__ {int len; int * data; void* nonpersistent_refcount; void* persistent_refcount; } ;


 int StringPersistent ;
 int insert_string_sorted (TYPE_2__*,size_t) ;

__attribute__((used)) static void set_st_entry( string_table *st, UINT n, WCHAR *str, int len, USHORT refcount,
                          enum StringPersistence persistence )
{
    if (persistence == StringPersistent)
    {
        st->strings[n].persistent_refcount = refcount;
        st->strings[n].nonpersistent_refcount = 0;
    }
    else
    {
        st->strings[n].persistent_refcount = 0;
        st->strings[n].nonpersistent_refcount = refcount;
    }

    st->strings[n].data = str;
    st->strings[n].len = len;

    insert_string_sorted( st, n );

    if( n < st->maxcount )
        st->freeslot = n + 1;
}
