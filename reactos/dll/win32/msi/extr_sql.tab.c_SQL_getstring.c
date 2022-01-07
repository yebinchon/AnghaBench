
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sql_str {char* data; int len; } ;
typedef int WCHAR ;
typedef int UINT ;
typedef scalar_t__* LPWSTR ;
typedef char* LPCWSTR ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int memcpy (scalar_t__*,char*,int) ;
 scalar_t__* parser_alloc (void*,int) ;

UINT SQL_getstring( void *info, const struct sql_str *strdata, LPWSTR *str )
{
    LPCWSTR p = strdata->data;
    UINT len = strdata->len;


    if( ( (p[0]=='`') && (p[len-1]!='`') ) ||
        ( (p[0]=='\'') && (p[len-1]!='\'') ) )
        return ERROR_FUNCTION_FAILED;


    if( ( (p[0]=='`') && (p[len-1]=='`') ) ||
        ( (p[0]=='\'') && (p[len-1]=='\'') ) )
    {
        p++;
        len -= 2;
    }
    *str = parser_alloc( info, (len + 1)*sizeof(WCHAR) );
    if( !*str )
        return ERROR_OUTOFMEMORY;
    memcpy( *str, p, len*sizeof(WCHAR) );
    (*str)[len]=0;

    return ERROR_SUCCESS;
}
