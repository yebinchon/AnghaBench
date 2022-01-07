
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int codepage; TYPE_1__* strings; } ;
typedef TYPE_2__ string_table ;
typedef enum StringPersistence { ____Placeholder_StringPersistence } StringPersistence ;
typedef int WCHAR ;
typedef int USHORT ;
typedef size_t UINT ;
struct TYPE_7__ {scalar_t__ nonpersistent_refcount; scalar_t__ persistent_refcount; } ;
typedef scalar_t__* LPWSTR ;


 int ERR (char*,int ,size_t) ;
 scalar_t__ ERROR_SUCCESS ;
 int MultiByteToWideChar (int ,int ,char const*,size_t,scalar_t__*,int) ;
 int StringPersistent ;
 int debugstr_a (char const*) ;
 scalar_t__* msi_alloc (int) ;
 int set_st_entry (TYPE_2__*,size_t,scalar_t__*,int,int ,int) ;
 size_t st_find_free_entry (TYPE_2__*) ;
 scalar_t__ string2id (TYPE_2__*,char const*,size_t*) ;

__attribute__((used)) static int add_string( string_table *st, UINT n, const char *data, UINT len, USHORT refcount, enum StringPersistence persistence )
{
    LPWSTR str;
    int sz;

    if( !data || !len )
        return 0;
    if( n > 0 )
    {
        if( st->strings[n].persistent_refcount ||
            st->strings[n].nonpersistent_refcount )
            return -1;
    }
    else
    {
        if (string2id( st, data, &n ) == ERROR_SUCCESS)
        {
            if (persistence == StringPersistent)
                st->strings[n].persistent_refcount += refcount;
            else
                st->strings[n].nonpersistent_refcount += refcount;
            return n;
        }
        n = st_find_free_entry( st );
        if( n == -1 )
            return -1;
    }

    if( n < 1 )
    {
        ERR("invalid index adding %s (%d)\n", debugstr_a( data ), n );
        return -1;
    }


    sz = MultiByteToWideChar( st->codepage, 0, data, len, ((void*)0), 0 );
    str = msi_alloc( (sz+1)*sizeof(WCHAR) );
    if( !str )
        return -1;
    MultiByteToWideChar( st->codepage, 0, data, len, str, sz );
    str[sz] = 0;

    set_st_entry( st, n, str, sz, refcount, persistence );
    return n;
}
