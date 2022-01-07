
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Mode ;


 scalar_t__ g_realloc (int **,int) ;
 int ** modi ;
 int num_modi ;
 int rofi_collect_modi_add (int *) ;
 int * rofi_collect_modi_search (char const*) ;
 scalar_t__ script_switcher_is_valid (char const*) ;
 int * script_switcher_parse_setup (char const*) ;

__attribute__((used)) static int add_mode ( const char * token )
{
    unsigned int index = num_modi;

    modi = (Mode * *) g_realloc ( modi, sizeof ( Mode* ) * ( num_modi + 1 ) );

    Mode *mode = rofi_collect_modi_search ( token );
    if ( mode ) {
        modi[num_modi] = mode;
        num_modi++;
    }
    else if ( script_switcher_is_valid ( token ) ) {

        Mode *sw = script_switcher_parse_setup ( token );
        if ( sw != ((void*)0) ) {

            rofi_collect_modi_add ( sw );
            modi[num_modi] = sw;
            num_modi++;
        }
    }
    return ( index == num_modi ) ? -1 : (int) index;
}
