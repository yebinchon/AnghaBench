
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int w; int h; int monitor_id; } ;
typedef TYPE_2__ workarea ;
struct TYPE_9__ {unsigned int num_widgets; int * widgets; TYPE_1__* media; } ;
typedef TYPE_3__ ThemeWidget ;
struct TYPE_10__ {unsigned int num_widgets; TYPE_3__** widgets; } ;
struct TYPE_7__ {int type; int value; } ;
 int monitor_active (TYPE_2__*) ;
 TYPE_4__* rofi_theme ;
 int rofi_theme_parse_merge_widgets (TYPE_4__*,int ) ;

void rofi_theme_parse_process_conditionals ( void )
{
    workarea mon;
    monitor_active ( &mon );
    if ( rofi_theme == ((void*)0) ) return;
    for ( unsigned int i = 0; i < rofi_theme->num_widgets; i++ ) {
            ThemeWidget *widget = rofi_theme->widgets[i];
            if ( widget->media != ((void*)0) ) {
                switch ( widget->media->type )
                {
                    case 129:
                        {
                            int w = widget->media->value;
                            if ( mon.w >= w ){
                                for ( unsigned int x =0; x < widget->num_widgets; x++) {
                                    rofi_theme_parse_merge_widgets ( rofi_theme, widget->widgets[x] );
                                }
                            }
                            break;
                        }
                    case 132:
                        {
                            int w = widget->media->value;
                            if ( mon.w < w ){
                                for ( unsigned int x =0; x < widget->num_widgets; x++) {
                                    rofi_theme_parse_merge_widgets ( rofi_theme, widget->widgets[x] );
                                }
                            }
                            break;
                        }
                    case 130:
                        {
                            int h = widget->media->value;
                            if ( mon.h >= h ){
                                for ( unsigned int x =0; x < widget->num_widgets; x++) {
                                    rofi_theme_parse_merge_widgets ( rofi_theme, widget->widgets[x] );
                                }
                            }
                            break;
                        }
                    case 133:
                        {
                            int h = widget->media->value;
                            if ( mon.h < h ){
                                for ( unsigned int x =0; x < widget->num_widgets; x++) {
                                    rofi_theme_parse_merge_widgets ( rofi_theme, widget->widgets[x] );
                                }
                            }
                            break;
                        }
                    case 128:
                        {
                            if ( mon.monitor_id == widget->media->value ){
                                for ( unsigned int x =0; x < widget->num_widgets; x++) {
                                    rofi_theme_parse_merge_widgets ( rofi_theme, widget->widgets[x] );
                                }
                            }
                            break;
                        }
                    case 131:
                        {
                            double r = widget->media->value;
                            if ( (mon.w/(double)mon.h) >= r ){
                                for ( unsigned int x =0; x < widget->num_widgets; x++) {
                                    rofi_theme_parse_merge_widgets ( rofi_theme, widget->widgets[x] );
                                }
                            }
                            break;
                        }
                    case 134:
                        {
                            double r = widget->media->value;
                            if ( (mon.w/(double)mon.h) < r ){
                                for ( unsigned int x =0; x < widget->num_widgets; x++) {
                                    rofi_theme_parse_merge_widgets ( rofi_theme, widget->widgets[x] );
                                }
                            }
                            break;
                        }
                    default:
                        {
                            break;
                        }
                }
            }
    }
}
