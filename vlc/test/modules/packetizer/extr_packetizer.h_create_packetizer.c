
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
struct TYPE_11__ {int p_libvlc_int; } ;
typedef TYPE_2__ libvlc_instance_t ;
struct TYPE_10__ {unsigned int i_frame_rate; unsigned int i_frame_rate_base; } ;
struct TYPE_13__ {int b_packetized; TYPE_1__ video; } ;
struct TYPE_12__ {int p_module; TYPE_6__ fmt_in; TYPE_6__ fmt_out; int * pf_packetize; int * pf_decode; } ;
typedef TYPE_3__ decoder_t ;


 int VIDEO_ES ;
 int delete_packetizer (TYPE_3__*) ;
 int es_format_Init (TYPE_6__*,int ,int ) ;
 int module_need (TYPE_3__*,char*,int *,int) ;
 TYPE_3__* vlc_object_create (int ,int) ;

__attribute__((used)) static decoder_t *create_packetizer(libvlc_instance_t *vlc,
                                    unsigned num, unsigned den,
                                    vlc_fourcc_t codec)
{
    decoder_t *p_pack = vlc_object_create(vlc->p_libvlc_int,
                                          sizeof(*p_pack));
    if(!p_pack)
        return ((void*)0);
    p_pack->pf_decode = ((void*)0);
    p_pack->pf_packetize = ((void*)0);

    es_format_Init(&p_pack->fmt_in, VIDEO_ES, codec);
    es_format_Init(&p_pack->fmt_out, VIDEO_ES, 0);
    p_pack->fmt_in.video.i_frame_rate = num;
    p_pack->fmt_in.video.i_frame_rate_base = den;
    p_pack->fmt_in.b_packetized = 0;

    p_pack->p_module = module_need( p_pack, "packetizer", ((void*)0), 0 );
    if(!p_pack->p_module)
        delete_packetizer(p_pack);
    return p_pack;
}
