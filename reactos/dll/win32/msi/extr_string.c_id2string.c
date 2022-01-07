
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codepage; int maxcount; } ;
typedef TYPE_1__ string_table ;
typedef int WCHAR ;
typedef int UINT ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_MORE_DATA ;
 int ERROR_SUCCESS ;
 int TRACE (char*,int,int ) ;
 int WideCharToMultiByte (int ,int ,int const*,int,char*,int,int *,int *) ;
 int * msi_string_lookup (TYPE_1__ const*,int,int*) ;

__attribute__((used)) static UINT id2string( const string_table *st, UINT id, char *buffer, UINT *sz )
{
    int len, lenW;
    const WCHAR *str;

    TRACE("Finding string %d of %d\n", id, st->maxcount);

    str = msi_string_lookup( st, id, &lenW );
    if( !str )
        return ERROR_FUNCTION_FAILED;

    len = WideCharToMultiByte( st->codepage, 0, str, lenW, ((void*)0), 0, ((void*)0), ((void*)0) );
    if( *sz < len )
    {
        *sz = len;
        return ERROR_MORE_DATA;
    }
    *sz = WideCharToMultiByte( st->codepage, 0, str, lenW, buffer, *sz, ((void*)0), ((void*)0) );
    return ERROR_SUCCESS;
}
