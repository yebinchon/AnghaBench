
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int pu_dirac_vidfmt_frate ;
typedef int p_dirac_frate_tbl ;
struct TYPE_9__ {char* packet; int bytes; } ;
typedef TYPE_3__ ogg_packet ;
struct TYPE_7__ {int b_old; int b_interlaced; } ;
struct TYPE_8__ {TYPE_1__ dirac; } ;
struct TYPE_10__ {int b_force_backup; int dts; TYPE_2__ special; } ;
typedef TYPE_4__ logical_stream_t ;
typedef int bs_t ;


 int __MAX (int,int) ;
 int bs_init (int *,char*,int ) ;
 int bs_skip (int *,int) ;
 int date_Init (int *,int,int) ;
 scalar_t__ dirac_bool (int *) ;
 void* dirac_uint (int *) ;

__attribute__((used)) static bool Ogg_ReadDiracHeader( logical_stream_t *p_stream,
                                 ogg_packet *p_oggpacket )
{
    p_stream->special.dirac.b_old = (p_oggpacket->packet[0] == 'K');

    static const struct {
        uint32_t u_n , u_d ;
    } p_dirac_frate_tbl[] = {
        {1,1},
        {24000,1001}, {24,1}, {25,1}, {30000,1001}, {30,1},
        {50,1}, {60000,1001}, {60,1}, {15000,1001}, {25,2},
    };
    static const size_t u_dirac_frate_tbl = sizeof(p_dirac_frate_tbl)/sizeof(*p_dirac_frate_tbl);

    static const uint32_t pu_dirac_vidfmt_frate[] = {
        1, 9, 10, 9, 10, 9, 10, 4, 3, 7, 6, 4, 3, 7, 6, 2, 2, 7, 6, 7, 6,
    };
    static const size_t u_dirac_vidfmt_frate = sizeof(pu_dirac_vidfmt_frate)/sizeof(*pu_dirac_vidfmt_frate);

    bs_t bs;



    p_stream->b_force_backup = 0;


    bs_init( &bs, p_oggpacket->packet, p_oggpacket->bytes );
    bs_skip( &bs, 13*8);
    dirac_uint( &bs );
    dirac_uint( &bs );
    dirac_uint( &bs );
    dirac_uint( &bs );

    uint32_t u_video_format = dirac_uint( &bs );
    if( u_video_format >= u_dirac_vidfmt_frate )
    {

        return 0;
    }

    if( dirac_bool( &bs ) )
    {
        dirac_uint( &bs );
        dirac_uint( &bs );
    }

    if( dirac_bool( &bs ) )
    {
        dirac_uint( &bs );
    }

    if( dirac_bool( &bs ) )
    {
        p_stream->special.dirac.b_interlaced = dirac_uint( &bs );
    }
    else
        p_stream->special.dirac.b_interlaced = 0;

    uint32_t u_n = p_dirac_frate_tbl[pu_dirac_vidfmt_frate[u_video_format]].u_n;
    uint32_t u_d = p_dirac_frate_tbl[pu_dirac_vidfmt_frate[u_video_format]].u_d;
    u_d = __MAX( u_d, 1 );
    if( dirac_bool( &bs ) )
    {
        uint32_t u_frame_rate_index = dirac_uint( &bs );
        if( u_frame_rate_index >= u_dirac_frate_tbl )
        {

            return 0;
        }
        u_n = p_dirac_frate_tbl[u_frame_rate_index].u_n;
        u_d = p_dirac_frate_tbl[u_frame_rate_index].u_d;
        if( u_frame_rate_index == 0 )
        {
            u_n = dirac_uint( &bs );
            u_d = dirac_uint( &bs );
        }
    }

    if( !u_n || !u_d )
        return 0;







    date_Init( &p_stream->dts, 2 * u_n, u_d );

    return 1;
}
