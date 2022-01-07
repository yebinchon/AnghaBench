
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* modi; } ;


 char* color_green ;
 char* color_red ;
 char* color_reset ;
 TYPE_1__ config ;
 int fileno (int ) ;
 int fprintf (int ,char*,char*,char const*,char*,...) ;
 int isatty (int ) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void help_print_disabled_mode ( const char *mode )
{
    int is_term = isatty ( fileno ( stdout ) );

    if ( is_term ) {
        fprintf ( stderr, "Mode %s%s%s is not enabled. I have enabled it for now.\n",
                  color_red, mode, color_reset );
        fprintf ( stderr, "Please consider adding %s%s%s to the list of enabled modi: %smodi: %s%s%s,%s%s.\n",
                  color_red, mode, color_reset,
                  color_green, config.modi, color_reset,
                  color_red, mode, color_reset
                  );
    }
}
