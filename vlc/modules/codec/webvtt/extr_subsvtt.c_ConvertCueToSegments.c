
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_child; } ;
typedef TYPE_1__ webvtt_dom_cue_t ;
typedef int text_segment_t ;
struct render_variables_s {int dummy; } ;
typedef int decoder_t ;


 int * ConvertNodesToSegments (int *,struct render_variables_s*,TYPE_1__ const*,int ) ;

__attribute__((used)) static text_segment_t *ConvertCueToSegments( decoder_t *p_dec,
                                             struct render_variables_s *p_vars,
                                             const webvtt_dom_cue_t *p_cue )
{
    return ConvertNodesToSegments( p_dec, p_vars, p_cue, p_cue->p_child );
}
