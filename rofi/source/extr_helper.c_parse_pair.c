
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; int stop; } ;
typedef TYPE_1__ rofi_range_pair ;


 scalar_t__ isblank (char) ;
 scalar_t__ strchr (char*,char) ;
 char* strsep (char**,char const*) ;
 scalar_t__ strtol (char*,int *,int) ;

__attribute__((used)) static void parse_pair ( char *input, rofi_range_pair *item )
{

    while ( input != ((void*)0) && isblank(*input) )
        ++input;

    const char *sep[] = { "-", ":" };
    int pythonic = ( strchr(input, ':') || input[0] == '-' ) ? 1 : 0;
    int index = 0;

    for ( char *token = strsep ( &input, sep[pythonic] ); token != ((void*)0); token = strsep ( &input, sep[pythonic] ) ) {
        if ( index == 0 ) {
            item->start = item->stop = (int) strtol ( token, ((void*)0), 10 );
            index++;
            continue;
        }

        if ( token[0] == '\0' ) {
            item->stop = -1;
            continue;
        }

        item->stop = (int) strtol ( token, ((void*)0), 10 );
        if ( pythonic ) {
            --item->stop;
        }
    }
}
