
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gboolean ;
struct TYPE_3__ {int name; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 TYPE_1__** available_modi ;
 char* color_green ;
 char* color_red ;
 char* color_reset ;
 TYPE_1__** modi ;
 unsigned int num_available_modi ;
 unsigned int num_modi ;
 int printf (char*,char*,char*,int ,char*) ;

__attribute__((used)) static void print_list_of_modi ( int is_term )
{
    for ( unsigned int i = 0; i < num_available_modi; i++ ) {
        gboolean active = FALSE;
        for ( unsigned int j = 0; j < num_modi; j++ ) {
            if ( modi[j] == available_modi[i] ) {
                active = TRUE;
                break;
            }
        }
        printf ( "        * %s%s%s%s\n",
                 active ? "+" : "",
                 is_term ? ( active ? color_green : color_red ) : "",
                 available_modi[i]->name,
                 is_term ? color_reset : ""
                 );
    }
}
