
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_15__ {int* pi_scores; int* pi_final_scores; } ;
typedef TYPE_2__ ivtc_sys_t ;
struct TYPE_16__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_14__ {int ** pp_history; } ;
struct TYPE_17__ {TYPE_1__ context; TYPE_2__ ivtc; } ;
typedef TYPE_4__ filter_sys_t ;


 int CalculateInterlaceScore (int *,int *) ;
 size_t FIELD_PAIR_TNBN ;
 int IVTCCadenceAnalyze (TYPE_3__*) ;
 int IVTCCadenceDetectAlgoScores (TYPE_3__*) ;
 int IVTCCadenceDetectAlgoVektor (TYPE_3__*) ;
 int IVTCCadenceDetectFinalize (TYPE_3__*) ;
 int IVTCFrameInit (TYPE_3__*) ;
 int IVTCLowLevelDetect (TYPE_3__*) ;
 int IVTCOutputOrDropFrame (TYPE_3__*,int *) ;
 int IVTCSoftTelecineDetect (TYPE_3__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 int assert (int ) ;
 int picture_Copy (int *,int *) ;

int RenderIVTC( filter_t *p_filter, picture_t *p_dst, picture_t *p_pic )
{
    VLC_UNUSED(p_pic);
    assert( p_filter != ((void*)0) );
    assert( p_dst != ((void*)0) );

    filter_sys_t *p_sys = p_filter->p_sys;
    ivtc_sys_t *p_ivtc = &p_sys->ivtc;

    picture_t *p_prev = p_sys->context.pp_history[0];
    picture_t *p_curr = p_sys->context.pp_history[1];
    picture_t *p_next = p_sys->context.pp_history[2];


    if( !p_next )
        return VLC_EGENERIC;


    IVTCFrameInit( p_filter );



    if( p_prev && p_curr )
    {

        IVTCLowLevelDetect( p_filter );





        IVTCSoftTelecineDetect( p_filter );
        IVTCCadenceDetectAlgoScores( p_filter );
        IVTCCadenceDetectAlgoVektor( p_filter );
        IVTCCadenceDetectFinalize( p_filter );
        IVTCCadenceAnalyze( p_filter );


        bool b_have_output_frame = IVTCOutputOrDropFrame( p_filter, p_dst );

        if( b_have_output_frame )
            return VLC_SUCCESS;
        else
            return VLC_EGENERIC;
    }
    else if( !p_prev && !p_curr )
    {






        int i_score = CalculateInterlaceScore( p_next, p_next );
        p_ivtc->pi_scores[FIELD_PAIR_TNBN] = i_score;
        p_ivtc->pi_final_scores[0] = i_score;

        picture_Copy( p_dst, p_next );
        return VLC_SUCCESS;
    }
    else
    {


        assert( p_curr && !p_prev );
        IVTCLowLevelDetect( p_filter );




        p_ivtc->pi_final_scores[1] = p_ivtc->pi_scores[FIELD_PAIR_TNBN];

        picture_Copy( p_dst, p_next );
        return VLC_SUCCESS;
    }
}
