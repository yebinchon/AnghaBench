
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int type; } ;
typedef TYPE_1__ XrmOption ;


 int print_option_boolean (TYPE_1__*,int) ;
 int print_option_char (TYPE_1__*,int) ;
 int print_option_number (TYPE_1__*,int) ;
 int print_option_snumber (TYPE_1__*,int) ;
 int print_option_string (TYPE_1__*,int) ;






__attribute__((used)) static void print_option ( XrmOption *xo, int is_term )
{
    switch ( xo->type )
    {
    case 128:
        print_option_string ( xo, is_term );
        break;
    case 130:
        print_option_number ( xo, is_term );
        break;
    case 129:
        print_option_snumber ( xo, is_term );
        break;
    case 132:
        print_option_boolean ( xo, is_term );
        break;
    case 131:
        print_option_char ( xo, is_term );
        break;
    default:
        break;
    }
}
