
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EnsureUTF8 (char*) ;
 int * strchr (char*,unsigned char) ;
 int strcmp (char*,char*) ;

void filename_sanitize( char *str )
{
    unsigned char c;


    if( !strcmp( str, "." ) || !strcmp( str, ".." ) )
    {
        while( *str )
            *(str++) = '_';
        return;
    }




    EnsureUTF8( str );


    while( (c = *str) != '\0' )
    {
        if( c != ' ' )
            break;
        *(str++) = '_';
    }

    char *start = str;

    while( (c = *str) != '\0' )
    {

        if( c < 32 )
            *str = '_';



        else if( strchr( "/:\\*\"?|<>", c ) != ((void*)0) )
            *str = '_';
        str++;
    }


    while( str > start )
    {
        if( *(--str) != ' ' )
            break;
        *str = '_';
    }
}
