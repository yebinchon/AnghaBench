
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_8__ {scalar_t__ mfplat_dll; } ;
struct TYPE_7__ {TYPE_3__ mf_handle; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef TYPE_3__ MFHandle ;


 int CoUninitialize () ;
 int DestroyMFT (TYPE_1__*) ;
 int FreeLibrary (scalar_t__) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void Close(vlc_object_t *p_this)
{
    decoder_t *p_dec = (decoder_t *)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;
    MFHandle *mf = &p_sys->mf_handle;

    DestroyMFT(p_dec);

    if (mf->mfplat_dll)
        FreeLibrary(mf->mfplat_dll);

    free(p_sys);

    CoUninitialize();
}
