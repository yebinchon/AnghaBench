
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t maxcount; TYPE_1__* strings; } ;
typedef TYPE_2__ string_table ;
typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_4__ {int len; int const* data; int nonpersistent_refcount; int persistent_refcount; } ;


 int const* szEmpty ;

const WCHAR *msi_string_lookup( const string_table *st, UINT id, int *len )
{
    if( id == 0 )
    {
        if (len) *len = 0;
        return szEmpty;
    }
    if( id >= st->maxcount )
        return ((void*)0);

    if( id && !st->strings[id].persistent_refcount && !st->strings[id].nonpersistent_refcount)
        return ((void*)0);

    if (len) *len = st->strings[id].len;

    return st->strings[id].data;
}
