
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
typedef int dvbsub_regiondef_t ;
typedef int dvbsub_page_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_10__ {int b_page; TYPE_5__* p_page; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int bs_t ;
struct TYPE_12__ {int i_version; int i_region_defs; int i_timeout; TYPE_3__* p_region_defs; } ;
struct TYPE_11__ {void* i_y; void* i_x; void* i_id; } ;


 int DVBSUB_PCS_STATE_ACQUISITION ;
 int DVBSUB_PCS_STATE_CHANGE ;
 void* bs_read (int *,int) ;
 int bs_skip (int *,int) ;
 int free (TYPE_3__*) ;
 int free_all (TYPE_1__*) ;
 TYPE_5__* malloc (int) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 TYPE_3__* vlc_alloc (int,int) ;

__attribute__((used)) static void decode_page_composition( decoder_t *p_dec, bs_t *s, uint16_t i_segment_length )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    int i_version, i_state, i_timeout, i;


    i_timeout = bs_read( s, 8 );
    i_version = bs_read( s, 4 );
    i_state = bs_read( s, 2 );
    bs_skip( s, 2 );

    if( i_state == DVBSUB_PCS_STATE_CHANGE )
    {




        free_all( p_dec );
    }
    else if( !p_sys->p_page && ( i_state != DVBSUB_PCS_STATE_ACQUISITION ) &&
             ( i_state != DVBSUB_PCS_STATE_CHANGE ) )
    {

        msg_Dbg( p_dec, "didn't receive an acquisition page yet" );






    }







    if( p_sys->p_page && ( p_sys->p_page->i_version == i_version ) )
    {
        bs_skip( s, 8 * (i_segment_length - 2) );
        return;
    }
    else if( p_sys->p_page )
    {
        if( p_sys->p_page->i_region_defs )
            free( p_sys->p_page->p_region_defs );
        p_sys->p_page->p_region_defs = ((void*)0);
        p_sys->p_page->i_region_defs = 0;
    }

    if( !p_sys->p_page )
    {




        p_sys->p_page = malloc( sizeof(dvbsub_page_t) );
        if( !p_sys->p_page )
            return;
    }

    p_sys->p_page->i_version = i_version;
    p_sys->p_page->i_timeout = i_timeout;
    p_sys->b_page = 1;


    p_sys->p_page->i_region_defs = (i_segment_length - 2) / 6;

    if( p_sys->p_page->i_region_defs == 0 ) return;

    p_sys->p_page->p_region_defs =
        vlc_alloc( p_sys->p_page->i_region_defs, sizeof(dvbsub_regiondef_t) );
    if( p_sys->p_page->p_region_defs )
    {
        for( i = 0; i < p_sys->p_page->i_region_defs; i++ )
        {
            p_sys->p_page->p_region_defs[i].i_id = bs_read( s, 8 );
            bs_skip( s, 8 );
            p_sys->p_page->p_region_defs[i].i_x = bs_read( s, 16 );
            p_sys->p_page->p_region_defs[i].i_y = bs_read( s, 16 );






        }
    }
}
