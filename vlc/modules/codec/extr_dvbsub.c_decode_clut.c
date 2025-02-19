
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint_fast8_t ;
typedef void* uint8_t ;
typedef int uint16_t ;
struct TYPE_13__ {int i_id; int i_version; TYPE_3__* c_8b; TYPE_2__* c_4b; TYPE_1__* c_2b; struct TYPE_13__* p_next; } ;
typedef TYPE_4__ dvbsub_clut_t ;
struct TYPE_14__ {TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_15__ {TYPE_4__ default_clut; TYPE_4__* p_cluts; } ;
typedef TYPE_6__ decoder_sys_t ;
typedef int bs_t ;
struct TYPE_12__ {void* T; void* Cb; void* Cr; void* Y; } ;
struct TYPE_11__ {void* T; void* Cb; void* Cr; void* Y; } ;
struct TYPE_10__ {void* T; void* Cb; void* Cr; void* Y; } ;


 int bs_read (int *,int) ;
 int bs_skip (int *,int) ;
 TYPE_4__* malloc (int) ;
 int msg_Dbg (TYPE_5__*,char*,int) ;

__attribute__((used)) static void decode_clut( decoder_t *p_dec, bs_t *s, uint16_t i_segment_length )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    uint16_t i_processed_length;
    dvbsub_clut_t *p_clut, *p_next;
    int i_id, i_version;

    i_id = bs_read( s, 8 );
    i_version = bs_read( s, 4 );


    for( p_clut = p_sys->p_cluts; p_clut != ((void*)0); p_clut = p_clut->p_next )
    {
        if( p_clut->i_id == i_id ) break;
    }


    if( p_clut && ( p_clut->i_version == i_version ) )
    {

        bs_skip( s, 8 * i_segment_length - 12 );
        return;
    }

    if( !p_clut )
    {



        p_clut = malloc( sizeof( dvbsub_clut_t ) );
        if( !p_clut )
            return;
        p_clut->p_next = p_sys->p_cluts;
        p_sys->p_cluts = p_clut;
    }


    p_next = p_clut->p_next;
    *p_clut = p_sys->default_clut;
    p_clut->p_next = p_next;


    p_clut->i_version = i_version;
    p_clut->i_id = i_id;
    bs_skip( s, 4 );
    i_processed_length = 2;
    while( i_processed_length < i_segment_length )
    {
        uint8_t y, cb, cr, t;
        uint_fast8_t cid = bs_read( s, 8 );
        uint_fast8_t type = bs_read( s, 3 );

        bs_skip( s, 4 );

        if( bs_read( s, 1 ) )
        {
            y = bs_read( s, 8 );
            cr = bs_read( s, 8 );
            cb = bs_read( s, 8 );
            t = bs_read( s, 8 );
            i_processed_length += 6;
        }
        else
        {
            y = bs_read( s, 6 ) << 2;
            cr = bs_read( s, 4 ) << 4;
            cb = bs_read( s, 4 ) << 4;
            t = bs_read( s, 2 ) << 6;
            i_processed_length += 4;
        }




        if( y == 0 )
        {
            cr = cb = 0;
            t = 0xff;
        }




        if( ( type & 0x04 ) && ( cid < 4 ) )
        {
            p_clut->c_2b[cid].Y = y;
            p_clut->c_2b[cid].Cr = cr;
            p_clut->c_2b[cid].Cb = cb;
            p_clut->c_2b[cid].T = t;
        }
        if( ( type & 0x02 ) && ( cid < 16 ) )
        {
            p_clut->c_4b[cid].Y = y;
            p_clut->c_4b[cid].Cr = cr;
            p_clut->c_4b[cid].Cb = cb;
            p_clut->c_4b[cid].T = t;
        }
        if( type & 0x01 )
        {
            p_clut->c_8b[cid].Y = y;
            p_clut->c_8b[cid].Cr = cr;
            p_clut->c_8b[cid].Cb = cb;
            p_clut->c_8b[cid].T = t;
        }
    }
}
