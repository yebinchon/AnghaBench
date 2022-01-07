
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {struct TYPE_13__* p_next; } ;
typedef TYPE_3__ text_segment_t ;
struct TYPE_12__ {double x; double y; } ;
struct TYPE_14__ {int flags; int align; int inner_align; TYPE_2__ origin; TYPE_3__* p_segments; } ;
typedef TYPE_4__ substext_updater_region_t ;
struct TYPE_11__ {scalar_t__ scroll_direction; } ;
struct TYPE_15__ {int i_lastrow; int i_row_count; int i_firstrow; double i_anchor_offset_h; int anchor_point; double i_anchor_offset_v; scalar_t__ b_relative; int * rows; TYPE_1__ style; int b_visible; } ;
typedef TYPE_5__ cea708_window_t ;


 TYPE_3__* CEA708RowToSegments (int ,int) ;
 float CEA708_FONT_TO_LINE_HEIGHT_RATIO ;
 int CEA708_ROW_HEIGHT_STANDARD ;
 float CEA708_SCREEN_COLS_169 ;
 float CEA708_SCREEN_ROWS ;
 scalar_t__ CEA708_WA_DIRECTION_BT ;
 scalar_t__ CEA708_Window_RowCount (TYPE_5__ const*) ;




 TYPE_4__* SubpictureUpdaterSysRegionNew () ;
 int UPDT_REGION_ORIGIN_X_IS_RATIO ;
 int UPDT_REGION_ORIGIN_Y_IS_RATIO ;

__attribute__((used)) static void CEA708SpuConvert( const cea708_window_t *p_w,
                              substext_updater_region_t *p_region )
{
    if( !p_w->b_visible || CEA708_Window_RowCount( p_w ) == 0 )
        return;

    if( p_region == ((void*)0) && !(p_region = SubpictureUpdaterSysRegionNew()) )
        return;

    int first, last;

    if (p_w->style.scroll_direction == CEA708_WA_DIRECTION_BT) {


        last = p_w->i_lastrow;
        if (p_w->i_lastrow - p_w->i_row_count < p_w->i_firstrow)
            first = p_w->i_firstrow;
        else
            first = p_w->i_lastrow - p_w->i_row_count + 1;

    } else {
        first = p_w->i_firstrow;
        if (p_w->i_firstrow + p_w->i_row_count > p_w->i_lastrow)
            last = p_w->i_lastrow;
        else
            last = p_w->i_firstrow + p_w->i_row_count - 1;
    }

    text_segment_t **pp_last = &p_region->p_segments;
    for( uint8_t i=first; i<=last; i++ )
    {
        if( !p_w->rows[i] )
            continue;

        *pp_last = CEA708RowToSegments( p_w->rows[i], i < p_w->i_lastrow );
        if( *pp_last )
            pp_last = &((*pp_last)->p_next);
    }

    if( p_w->b_relative )
    {

        p_region->origin.x = p_w->i_anchor_offset_h / 100.0;

        switch (p_w->anchor_point) {
        case 133:
        case 134:
        case 132:
            p_region->origin.y = p_w->i_anchor_offset_v / 100.0;
            break;
        case 139:
        case 140:
        case 138:
            p_region->origin.y = 1.0 - (p_w->i_anchor_offset_v / 100.0);
            break;
        default:

            p_region->origin.y = p_w->i_anchor_offset_v / 100.0;
            break;
        }
    }
    else
    {
        p_region->origin.x = (float)p_w->i_anchor_offset_h / CEA708_SCREEN_COLS_169;
        p_region->origin.y = (float)p_w->i_anchor_offset_v /
                             (CEA708_SCREEN_ROWS * CEA708_FONT_TO_LINE_HEIGHT_RATIO);
    }
    p_region->flags |= UPDT_REGION_ORIGIN_X_IS_RATIO|UPDT_REGION_ORIGIN_Y_IS_RATIO;

    if( p_w->i_firstrow <= p_w->i_lastrow )
    {
        p_region->origin.y += p_w->i_firstrow * CEA708_ROW_HEIGHT_STANDARD;



    }

    if( p_w->anchor_point <= 138 )
    {
        static const int vlc_subpicture_aligns[] =
        {
            [133] = 128|130,
            [134] = 128,
            [132] = 128|129,
            [136] = 130,
            [137] = 0,
            [135] = 129,
            [139] = 131|130,
            [140] = 131,
            [138] = 131|129,
        };
        p_region->align = vlc_subpicture_aligns[p_w->anchor_point];
    }
    p_region->inner_align = 131|130;
}
