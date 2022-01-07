
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int th_ycbcr_buffer ;
struct TYPE_13__ {int b_progressive; int date; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_14__ {int* packet; } ;
typedef TYPE_2__ ogg_packet ;
struct TYPE_15__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_16__ {int b_decoded_first_keyframe; int i_pts; int tcx; } ;
typedef TYPE_4__ decoder_sys_t ;


 TYPE_1__* decoder_NewPicture (TYPE_3__*) ;
 scalar_t__ decoder_UpdateVideoFormat (TYPE_3__*) ;
 scalar_t__ th_decode_packetin (int ,TYPE_2__*,int *) ;
 scalar_t__ th_decode_ycbcr_out (int ,int ) ;
 int theora_CopyPicture (TYPE_1__*,int ) ;

__attribute__((used)) static picture_t *DecodePacket( decoder_t *p_dec, ogg_packet *p_oggpacket )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    picture_t *p_pic;
    th_ycbcr_buffer ycbcr;





    if (th_decode_packetin( p_sys->tcx, p_oggpacket, ((void*)0) ) < 0)
        return ((void*)0);


    if( !(p_oggpacket->packet[0] & 0x80) &&
        !(p_oggpacket->packet[0] & 0x40) )
        p_sys->b_decoded_first_keyframe = 1;






    if( !p_sys->b_decoded_first_keyframe )
        return ((void*)0);

    if( th_decode_ycbcr_out( p_sys->tcx, ycbcr ) )
        return ((void*)0);


    if( decoder_UpdateVideoFormat( p_dec ) )
        return ((void*)0);
    p_pic = decoder_NewPicture( p_dec );
    if( !p_pic ) return ((void*)0);

    theora_CopyPicture( p_pic, ycbcr );

    p_pic->date = p_sys->i_pts;
    p_pic->b_progressive = 1;

    return p_pic;
}
