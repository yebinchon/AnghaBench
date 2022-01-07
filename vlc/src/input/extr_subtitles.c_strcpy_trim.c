
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (unsigned char) ;
 char tolower (unsigned char) ;

__attribute__((used)) static void strcpy_trim( char *d, const char *s )
{
    unsigned char c;


    while( ((c = *s) != '\0') && !isalnum(c) )
    {
        s++;
    }
    for(;;)
    {

        while( ((c = *s) != '\0') && isalnum(c) )
        {
            *d = tolower(c);
            s++; d++;
        }
        if( *s == 0 ) break;

        while( ((c = *s) != '\0') && !isalnum(c) )
        {
            s++;
        }
        if( *s == 0 ) break;
        *d++ = ' ';
    }
    *d = 0;
}
