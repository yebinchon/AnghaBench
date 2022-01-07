
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_19__ {int * next; scalar_t__ data; } ;
struct TYPE_12__ {char* name; TYPE_7__* def_value; } ;
struct TYPE_17__ {int left; int bottom; int right; int top; } ;
struct TYPE_15__ {double red; double green; double blue; double alpha; } ;
struct TYPE_13__ {double red; double green; double blue; double alpha; } ;
struct TYPE_14__ {int style; TYPE_2__ color; } ;
struct TYPE_16__ {size_t i; char* s; double f; TYPE_1__ link; TYPE_6__ padding; TYPE_4__ color; int b; TYPE_3__ highlight; TYPE_8__* list; } ;
struct TYPE_18__ {int type; TYPE_5__ value; } ;
typedef TYPE_7__ Property ;
typedef TYPE_8__ GList ;
 int ROFI_HL_BOLD ;
 int ROFI_HL_COLOR ;
 int ROFI_HL_ITALIC ;
 int ROFI_HL_STRIKETHROUGH ;
 int ROFI_HL_UNDERLINE ;
 size_t ROFI_ORIENTATION_HORIZONTAL ;
 char** WindowLocationStr ;
 int distance_compare (int ,int ) ;
 TYPE_8__* g_list_next (TYPE_8__*) ;
 int printf (char*,...) ;
 int rofi_theme_print_distance (int ) ;

__attribute__((used)) static void int_rofi_theme_print_property ( Property *p )
{
    switch ( p->type )
    {
        case 132:
            printf ( "[ " );
            for ( GList *iter = p->value.list; iter != ((void*)0); iter = g_list_next ( iter ) ) {
                printf ( "%s", (char *) ( iter->data ) );
                if ( iter->next != ((void*)0) ) {
                    printf ( "," );
                }
            }
            printf ( " ]" );
            break;
        case 131:
            printf ( "%s", ( p->value.i == ROFI_ORIENTATION_HORIZONTAL ) ? "horizontal" : "vertical" );
            break;
        case 136:
            if ( p->value.highlight.style & ROFI_HL_BOLD ) {
                printf ( "bold " );
            }
            if ( p->value.highlight.style & ROFI_HL_UNDERLINE ) {
                printf ( "underline " );
            }
            if ( p->value.highlight.style & ROFI_HL_STRIKETHROUGH ) {
                printf ( "strikethrough " );
            }
            if ( p->value.highlight.style & ROFI_HL_ITALIC ) {
                printf ( "italic " );
            }
            if ( p->value.highlight.style & ROFI_HL_COLOR ) {
                printf ( "rgba ( %.0f, %.0f, %.0f, %.0f %% )",
                        ( p->value.highlight.color.red * 255.0 ),
                        ( p->value.highlight.color.green * 255.0 ),
                        ( p->value.highlight.color.blue * 255.0 ),
                        ( p->value.highlight.color.alpha * 100.0 ) );
            }
            break;
        case 129:
            printf ( "%s", WindowLocationStr[p->value.i] );
            break;
        case 128:
            printf ( "\"%s\"", p->value.s );
            break;
        case 134:
            printf ( "%d", p->value.i );
            break;
        case 137:
            printf ( "%.2f", p->value.f );
            break;
        case 139:
            printf ( "%s", p->value.b ? "true" : "false" );
            break;
        case 138:
            printf ( "rgba ( %.0f, %.0f, %.0f, %.0f %% )",
                    ( p->value.color.red * 255.0 ),
                    ( p->value.color.green * 255.0 ),
                    ( p->value.color.blue * 255.0 ),
                    ( p->value.color.alpha * 100.0 ) );
            break;
        case 130:
            if ( distance_compare ( p->value.padding.top, p->value.padding.bottom ) &&
                    distance_compare ( p->value.padding.left, p->value.padding.right ) &&
                    distance_compare ( p->value.padding.left, p->value.padding.top ) ) {
                rofi_theme_print_distance ( p->value.padding.left );
            }
            else if ( distance_compare ( p->value.padding.top, p->value.padding.bottom ) &&
                    distance_compare ( p->value.padding.left, p->value.padding.right ) ) {
                rofi_theme_print_distance ( p->value.padding.top );
                rofi_theme_print_distance ( p->value.padding.left );
            }
            else if ( !distance_compare ( p->value.padding.top, p->value.padding.bottom ) &&
                    distance_compare ( p->value.padding.left, p->value.padding.right ) ) {
                rofi_theme_print_distance ( p->value.padding.top );
                rofi_theme_print_distance ( p->value.padding.left );
                rofi_theme_print_distance ( p->value.padding.bottom );
            }
            else {
                rofi_theme_print_distance ( p->value.padding.top );
                rofi_theme_print_distance ( p->value.padding.right );
                rofi_theme_print_distance ( p->value.padding.bottom );
                rofi_theme_print_distance ( p->value.padding.left );
            }
            break;
        case 133:
            if ( p->value.link.def_value) {
                printf( "var( %s, ", p->value.link.name );
                int_rofi_theme_print_property ( p->value.link.def_value );
                printf (")");
            }else {
                printf ( "var(%s)", p->value.link.name );
            }
            break;
        case 135:
            printf ( "inherit" );
            break;
        default:
            break;
    }

}
