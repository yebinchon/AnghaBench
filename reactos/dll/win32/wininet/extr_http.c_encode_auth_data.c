
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;


 int HTTP_EncodeBase64 (char const*,int,char*) ;
 char* heap_alloc (int) ;
 int memcpy (char*,char const*,int) ;
 int strlenW (char const*) ;

__attribute__((used)) static WCHAR *encode_auth_data( const WCHAR *scheme, const char *data, UINT data_len )
{
    WCHAR *ret;
    UINT len, scheme_len = strlenW( scheme );


    len = scheme_len + 1 + ((data_len + 2) * 4) / 3;
    if (!(ret = heap_alloc( (len + 1) * sizeof(WCHAR) ))) return ((void*)0);
    memcpy( ret, scheme, scheme_len * sizeof(WCHAR) );
    ret[scheme_len] = ' ';
    HTTP_EncodeBase64( data, data_len, ret + scheme_len + 1 );
    return ret;
}
