
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_scroll_up; int i_lines_max_scroll; int viewport_anchor_y; int viewport_anchor_x; int anchor_y; int anchor_x; int f_width; int psz_id; } ;
typedef TYPE_1__ webvtt_region_t ;


 int WEBVTT_REGION_LINES_COUNT ;
 int __MIN (int,int ) ;
 int atoi (char const*) ;
 int free (int ) ;
 int parse_percent (char const*,int *) ;
 int parse_percent_tuple (char const*,int *,int *) ;
 int strcmp (char const*,char*) ;
 int strdup (char const*) ;

__attribute__((used)) static void webvtt_region_ParseTuple( webvtt_region_t *p_region,
                                      const char *psz_key, const char *psz_value )
{
    if( !strcmp( psz_key, "id" ) )
    {
        free( p_region->psz_id );
        p_region->psz_id = strdup( psz_value );
    }
    else if( !strcmp( psz_key, "width" ) )
    {
        parse_percent( psz_value, &p_region->f_width );
    }
    else if( !strcmp( psz_key, "regionanchor" ) )
    {
        parse_percent_tuple( psz_value, &p_region->anchor_x,
                                        &p_region->anchor_y );
    }
    else if( !strcmp( psz_key, "viewportanchor" ) )
    {
        parse_percent_tuple( psz_value, &p_region->viewport_anchor_x,
                                        &p_region->viewport_anchor_y );
    }
    else if( !strcmp( psz_key, "lines" ) )
    {
        int i = atoi( psz_value );
        if( i > 0 )
            p_region->i_lines_max_scroll = __MIN(i, WEBVTT_REGION_LINES_COUNT);
    }
    else if( !strcmp( psz_key, "scroll" ) )
    {
        p_region->b_scroll_up = !strcmp( psz_value, "up" );
    }
}
