
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;


typedef int vlc_object_t ;
typedef int uint32_t ;
struct TYPE_21__ {int i_rate; } ;
struct TYPE_19__ {scalar_t__ i_cat; TYPE_2__ audio; } ;
struct TYPE_20__ {scalar_t__ i_cat; } ;
struct TYPE_23__ {TYPE_14__ fmt_out; TYPE_1__ fmt_in; TYPE_5__* p_sys; } ;
typedef TYPE_4__ encoder_t ;
struct TYPE_24__ {int end_date; int i_min_output; TYPE_6__* p_dmo; int * hmsdmo_dll; } ;
typedef TYPE_5__ encoder_sys_t ;
struct TYPE_25__ {TYPE_3__* vt; } ;
struct TYPE_22__ {int (* Release ) (int *) ;scalar_t__ (* GetOutputSizeInfo ) (TYPE_6__*,int ,int *,int *) ;scalar_t__ (* GetInputSizeInfo ) (TYPE_6__*,int ,int *,int *,int *) ;} ;
typedef int IUnknown ;
typedef TYPE_6__ IMediaObject ;
typedef int * HINSTANCE ;


 scalar_t__ AUDIO_ES ;
 int COINIT_MULTITHREADED ;
 int CoInitializeEx (int *,int ) ;
 int CoUninitialize () ;
 scalar_t__ EncoderSetAudioType (TYPE_4__*,TYPE_6__*) ;
 scalar_t__ EncoderSetVideoType (TYPE_4__*,TYPE_6__*) ;
 scalar_t__ FAILED (int ) ;
 int FreeLibrary (int *) ;
 scalar_t__ LoadDMO (int *,int **,TYPE_6__**,TYPE_14__*,int) ;
 scalar_t__ VIDEO_ES ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 int date_Init (int *,int,int) ;
 int free (TYPE_5__*) ;
 TYPE_5__* malloc (int) ;
 int msg_Dbg (TYPE_4__*,char*,int ,int ,...) ;
 int msg_Err (TYPE_4__*,char*) ;
 scalar_t__ stub1 (TYPE_6__*,int ,int *,int *,int *) ;
 scalar_t__ stub2 (TYPE_6__*,int ,int *,int *) ;
 int stub3 (int *) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static int EncOpen( vlc_object_t *p_this )
{
    encoder_t *p_enc = (encoder_t*)p_this;
    encoder_sys_t *p_sys = ((void*)0);
    IMediaObject *p_dmo = ((void*)0);
    HINSTANCE hmsdmo_dll = ((void*)0);


    if( FAILED(CoInitializeEx( ((void*)0), COINIT_MULTITHREADED )) )
        vlc_assert_unreachable();

    if( LoadDMO( p_this, &hmsdmo_dll, &p_dmo, &p_enc->fmt_out, 1 )
        != VLC_SUCCESS )
    {
        hmsdmo_dll = 0;
        p_dmo = 0;
        goto error;
    }

    if( p_enc->fmt_in.i_cat == VIDEO_ES )
    {
        if( EncoderSetVideoType( p_enc, p_dmo ) != VLC_SUCCESS ) goto error;
    }
    else
    {
        if( EncoderSetAudioType( p_enc, p_dmo ) != VLC_SUCCESS ) goto error;
    }


    if( ( p_enc->p_sys = p_sys = malloc(sizeof(*p_sys)) ) == ((void*)0) )
    {
        goto error;
    }

    p_sys->hmsdmo_dll = hmsdmo_dll;
    p_sys->p_dmo = p_dmo;


    {
        uint32_t i_size, i_align, dum;

        if( p_dmo->vt->GetInputSizeInfo( p_dmo, 0, &i_size, &i_align, &dum ) )
            msg_Err( p_enc, "GetInputSizeInfo() failed" );
        else
            msg_Dbg( p_enc, "GetInputSizeInfo(): bytes %i, align %i, %i",
                     i_size, i_align, dum );
    }


    {
        uint32_t i_size, i_align;

        p_sys->i_min_output = 0;
        if( p_dmo->vt->GetOutputSizeInfo( p_dmo, 0, &i_size, &i_align ) )
        {
            msg_Err( p_enc, "GetOutputSizeInfo() failed" );
            goto error;
        }
        else
        {
            msg_Dbg( p_enc, "GetOutputSizeInfo(): bytes %i, align %i",
                     i_size, i_align );
            p_sys->i_min_output = i_size;
        }
    }


    p_enc->fmt_out.i_cat = p_enc->fmt_in.i_cat;
    if( p_enc->fmt_out.i_cat == AUDIO_ES )
        date_Init( &p_sys->end_date, p_enc->fmt_out.audio.i_rate, 1 );
    else
        date_Init( &p_sys->end_date, 25 , 1 );

    return VLC_SUCCESS;

 error:

    if( p_dmo ) p_dmo->vt->Release( (IUnknown *)p_dmo );
    if( hmsdmo_dll ) FreeLibrary( hmsdmo_dll );


    CoUninitialize();

    free( p_sys );

    return VLC_EGENERIC;
}
