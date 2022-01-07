
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s; int * p_next3g; scalar_t__ i_size; } ;
typedef TYPE_1__ tx3g_segment_t ;


 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int text_segment_New (char const*) ;

__attribute__((used)) static tx3g_segment_t * tx3g_segment_New( const char *psz_string )
{
    tx3g_segment_t *p_seg = malloc( sizeof(tx3g_segment_t) );
    if( p_seg )
    {
        p_seg->i_size = 0;
        p_seg->p_next3g = ((void*)0);
        p_seg->s = text_segment_New( psz_string );
        if( !p_seg->s )
        {
            free( p_seg );
            p_seg = ((void*)0);
        }
    }
    return p_seg;
}
