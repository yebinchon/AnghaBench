
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int strcpyW (char*,char const*) ;
 int strlenW (char*) ;

__attribute__((used)) static void concat_W( WCHAR *buffer, const WCHAR *src1, const WCHAR *src2, const WCHAR *src3 )
{
    *buffer = 0;
    if (src1 && *src1)
    {
        strcpyW( buffer, src1 );
        buffer += strlenW(buffer );
        if (buffer[-1] != '\\') *buffer++ = '\\';
        if (src2) while (*src2 == '\\') src2++;
    }

    if (src2)
    {
        strcpyW( buffer, src2 );
        buffer += strlenW(buffer );
        if (buffer[-1] != '\\') *buffer++ = '\\';
        if (src3) while (*src3 == '\\') src3++;
    }

    if (src3)
        strcpyW( buffer, src3 );
}
