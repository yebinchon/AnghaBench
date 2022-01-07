
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* StripTags (char*) ;
 int memmove (char*,char*,int) ;
 int strlen (char*) ;
 char* strpbrk (char*,char*) ;
 int strspn (char*,char*) ;

__attribute__((used)) static char *CreatePlainText( char *psz_subtitle )
{
    char *psz_text = StripTags( psz_subtitle );
    char *s;

    if( !psz_text )
        return ((void*)0);

    s = strpbrk( psz_text, "\t\r\n " );
    while( s )
    {
        char spc = ' ';
        int i_whitespace = strspn( s, "\t\r\n " );





        for( int k = 0; k < i_whitespace; k++ )
            if( s[k] == '\n' ) spc = '\n';

        if( i_whitespace > 1 )
        {
            memmove( &s[1],
                     &s[i_whitespace],
                     strlen( s ) - i_whitespace + 1 );
        }
        *s++ = spc;

        s = strpbrk( s, "\t\r\n " );
    }
    return psz_text;
}
