
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codepage; } ;
typedef TYPE_1__ string_table ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int * LPWSTR ;
typedef int DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int TRACE (char*,int ) ;
 int debugstr_a (char const*) ;
 int * msi_alloc (int) ;
 int msi_free (int *) ;
 scalar_t__ msi_string2id (TYPE_1__ const*,int *,int,scalar_t__*) ;

__attribute__((used)) static UINT string2id( const string_table *st, const char *buffer, UINT *id )
{
    DWORD sz;
    UINT r = ERROR_INVALID_PARAMETER;
    LPWSTR str;

    TRACE("Finding string %s in string table\n", debugstr_a(buffer) );

    if( buffer[0] == 0 )
    {
        *id = 0;
        return ERROR_SUCCESS;
    }

    sz = MultiByteToWideChar( st->codepage, 0, buffer, -1, ((void*)0), 0 );
    if( sz <= 0 )
        return r;
    str = msi_alloc( sz*sizeof(WCHAR) );
    if( !str )
        return ERROR_NOT_ENOUGH_MEMORY;
    MultiByteToWideChar( st->codepage, 0, buffer, -1, str, sz );

    r = msi_string2id( st, str, sz - 1, id );
    msi_free( str );
    return r;
}
