
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;


struct TYPE_19__ {int p_sys; } ;
struct TYPE_20__ {int b_absolute; scalar_t__ i_start; scalar_t__ i_stop; int b_ephemer; TYPE_1__ updater; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_21__ {scalar_t__ i_end; scalar_t__ i_start; int * p_segment; } ;
typedef TYPE_3__ stl_sg_t ;
struct TYPE_22__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_23__ {size_t cct; int i_fps; TYPE_3__* groups; } ;
typedef TYPE_5__ decoder_sys_t ;
struct TYPE_24__ {size_t i_buffer; int i_flags; size_t* p_buffer; scalar_t__ i_dts; scalar_t__ i_pts; scalar_t__ i_length; } ;
typedef TYPE_6__ block_t ;
struct TYPE_18__ {char* str; } ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 size_t CCT_BEGIN ;
 int FillSubpictureUpdater (TYPE_3__*,int ) ;
 scalar_t__ ParseTTI (TYPE_3__*,size_t*,char const*,int ) ;
 int ResetGroups (TYPE_5__*) ;
 size_t STL_TTI_SIZE ;
 int VLCDEC_SUCCESS ;
 void* VLC_TICK_0 ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_6__*) ;
 TYPE_11__* cct_nums ;
 TYPE_2__* decoder_NewSubpictureText (TYPE_4__*) ;
 int decoder_QueueSub (TYPE_4__*,TYPE_2__*) ;

__attribute__((used)) static int Decode(decoder_t *p_dec, block_t *p_block)
{
    if (p_block == ((void*)0))
        return VLCDEC_SUCCESS;

    decoder_sys_t *p_sys = p_dec->p_sys;

    if(p_block->i_buffer < STL_TTI_SIZE)
        p_block->i_flags |= BLOCK_FLAG_CORRUPTED;

    if(p_block->i_flags & (BLOCK_FLAG_CORRUPTED|BLOCK_FLAG_DISCONTINUITY))
    {
        ResetGroups(p_dec->p_sys);

        if(p_block->i_flags & BLOCK_FLAG_CORRUPTED)
        {
            block_Release(p_block);
            return VLCDEC_SUCCESS;
        }
    }

    const char *psz_charset = cct_nums[p_sys->cct - CCT_BEGIN].str;
    for (size_t i = 0; i < p_block->i_buffer / STL_TTI_SIZE; i++)
    {
        stl_sg_t *p_group = &p_sys->groups[p_block->p_buffer[0]];
        if(ParseTTI(p_group, &p_block->p_buffer[i * STL_TTI_SIZE], psz_charset, p_sys->i_fps) &&
           p_group->p_segment != ((void*)0) )
        {

            subpicture_t *p_sub = decoder_NewSubpictureText(p_dec);
            if( p_sub )
            {
                FillSubpictureUpdater(p_group, p_sub->updater.p_sys );

                p_sub->b_absolute = 0;

                if(p_group->i_end != VLC_TICK_INVALID && p_group->i_start >= p_block->i_dts)
                {
                    p_sub->i_start = VLC_TICK_0 + p_group->i_start;
                    p_sub->i_stop = VLC_TICK_0 + p_group->i_end;
                }
                else
                {
                    p_sub->i_start = p_block->i_pts;
                    p_sub->i_stop = p_block->i_pts + p_block->i_length;
                    p_sub->b_ephemer = (p_block->i_length == VLC_TICK_INVALID);
                }
                decoder_QueueSub(p_dec, p_sub);
            }
        }
    }

    ResetGroups(p_sys);

    block_Release(p_block);
    return VLCDEC_SUCCESS;
}
