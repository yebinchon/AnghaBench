
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rofi_range_pair {int dummy; } ;
typedef int rofi_range_pair ;


 int * g_realloc (int *,unsigned int) ;
 int parse_pair (char*,int *) ;
 char* strtok_r (char*,char const* const,char**) ;

void parse_ranges ( char *input, rofi_range_pair **list, unsigned int *length )
{
    char *endp;
    if ( input == ((void*)0) ) {
        return;
    }
    const char *const sep = ",";
    for ( char *token = strtok_r ( input, sep, &endp ); token != ((void*)0); token = strtok_r ( ((void*)0), sep, &endp ) ) {

        *list = g_realloc ( ( *list ), ( ( *length ) + 1 ) * sizeof ( struct rofi_range_pair ) );

        parse_pair ( token, &( ( *list )[*length] ) );

        ( *length )++;
    }
}
