
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_7__ {TYPE_4__* p_chain; } ;
struct TYPE_9__ {TYPE_1__ pre; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_10__ {int i_buffer; int * p_buffer; struct TYPE_10__* p_next; } ;
typedef TYPE_4__ block_t ;


 scalar_t__ HEVC_NAL_PREF_SEI ;
 int HxxxParse_AnnexB_SEI (int *,int,int,int ,TYPE_2__*) ;
 int ParseSEICallback ;
 scalar_t__ hevc_getNALType (int *) ;

__attribute__((used)) static void ParseStoredSEI( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    for( block_t *p_nal = p_sys->pre.p_chain;
                  p_nal; p_nal = p_nal->p_next )
    {
        if( p_nal->i_buffer < 5 )
            continue;

        if( hevc_getNALType(&p_nal->p_buffer[4]) == HEVC_NAL_PREF_SEI )
        {
            HxxxParse_AnnexB_SEI( p_nal->p_buffer, p_nal->i_buffer,
                                  2 , ParseSEICallback, p_dec );
        }
    }
}
