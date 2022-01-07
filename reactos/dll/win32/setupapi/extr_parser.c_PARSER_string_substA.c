
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_file {int dummy; } ;
typedef int buffW ;
typedef int WCHAR ;
typedef size_t DWORD ;


 int MAX_STRING_LEN ;
 unsigned int PARSER_string_substW (struct inf_file const*,int const*,int *,int) ;
 int RtlUnicodeToMultiByteN (char*,unsigned int,size_t*,int *,unsigned int) ;
 int RtlUnicodeToMultiByteSize (size_t*,int *,unsigned int) ;

__attribute__((used)) static unsigned int PARSER_string_substA( const struct inf_file *file, const WCHAR *text,
                                          char *buffer, unsigned int size )
{
    WCHAR buffW[MAX_STRING_LEN+1];
    DWORD ret;

    unsigned int len = PARSER_string_substW( file, text, buffW, sizeof(buffW)/sizeof(WCHAR) );
    if (!buffer) RtlUnicodeToMultiByteSize( &ret, buffW, len * sizeof(WCHAR) );
    else
    {
        RtlUnicodeToMultiByteN( buffer, size-1, &ret, buffW, len * sizeof(WCHAR) );
        buffer[ret] = 0;
    }
    return ret;
}
