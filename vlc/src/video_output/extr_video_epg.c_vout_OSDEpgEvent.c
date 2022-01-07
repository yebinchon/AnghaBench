
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* psz_name; scalar_t__ i_duration; scalar_t__ i_start; } ;
typedef TYPE_1__ vlc_epg_event_t ;
struct TYPE_7__ {void* p_next; } ;
typedef TYPE_2__ text_segment_t ;
typedef int subpicture_region_t ;


 int RGB_COLOR1 ;
 int asprintf (char**,char*,char*,char*) ;
 int free (char*) ;
 char* vout_OSDPrintTime (scalar_t__) ;
 void* vout_OSDSegment (char*,int,int) ;
 int vout_OSDSegmentSetNoWrap (TYPE_2__*) ;
 int * vout_OSDTextRegion (TYPE_2__*,int,int) ;

__attribute__((used)) static subpicture_region_t * vout_OSDEpgEvent(const vlc_epg_event_t *p_evt,
                                              int x, int y, int size)
{
    text_segment_t *p_segment = ((void*)0);
    char *psz_start = vout_OSDPrintTime(p_evt->i_start);
    char *psz_end = vout_OSDPrintTime(p_evt->i_start + p_evt->i_duration);
    char *psz_text;
    if( -1 < asprintf(&psz_text, "%s-%s ", psz_start, psz_end))
    {
        p_segment = vout_OSDSegment(psz_text, size, RGB_COLOR1);
        if( p_segment )
            p_segment->p_next = vout_OSDSegment(p_evt->psz_name, size, 0xffffff);
        vout_OSDSegmentSetNoWrap( p_segment );
    }
    free( psz_start );
    free( psz_end );
    if(!p_segment)
        return ((void*)0);
    return vout_OSDTextRegion(p_segment, x, y);
}
