
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {int pf_decode; TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_9__ {scalar_t__ is_async; int output_sample; int mf_handle; } ;
typedef TYPE_2__ decoder_sys_t ;


 scalar_t__ AllocateOutputSample (TYPE_1__*,int ,int *) ;
 int COINIT_MULTITHREADED ;
 int Close (int *) ;
 int CoInitializeEx (int *,int ) ;
 int DecodeAsync ;
 int DecodeSync ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FindMFT (TYPE_1__*) ;
 scalar_t__ LoadMFTLibrary (int *) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_2__* calloc (int,int) ;
 int free (TYPE_2__*) ;
 int msg_Err (TYPE_1__*,char*) ;

__attribute__((used)) static int Open(vlc_object_t *p_this)
{
    decoder_t *p_dec = (decoder_t *)p_this;
    decoder_sys_t *p_sys;

    p_sys = p_dec->p_sys = calloc(1, sizeof(*p_sys));
    if (!p_sys)
        return VLC_ENOMEM;

    if( FAILED(CoInitializeEx(((void*)0), COINIT_MULTITHREADED)) )
    {
        free(p_sys);
        return VLC_EGENERIC;
    }

    if (LoadMFTLibrary(&p_sys->mf_handle))
    {
        msg_Err(p_dec, "Failed to load MFT library.");
        goto error;
    }

    if (FindMFT(p_dec))
    {
        msg_Err(p_dec, "Could not find suitable MFT decoder");
        goto error;
    }


    if (AllocateOutputSample(p_dec, 0, &p_sys->output_sample))
        goto error;

    p_dec->pf_decode = p_sys->is_async ? DecodeAsync : DecodeSync;

    return VLC_SUCCESS;

error:
    Close(p_this);
    return VLC_EGENERIC;
}
