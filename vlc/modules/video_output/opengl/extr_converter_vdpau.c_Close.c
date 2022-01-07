
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_decoder_device ;
struct TYPE_5__ {TYPE_3__* priv; TYPE_1__* vt; } ;
typedef TYPE_2__ opengl_tex_converter_t ;
struct TYPE_6__ {int * dec_device; } ;
typedef TYPE_3__ converter_sys_t ;
struct TYPE_4__ {scalar_t__ (* GetError ) () ;} ;


 scalar_t__ GL_NO_ERROR ;
 int GetVDPAUOpaqueDevice (int *) ;
 int _glVDPAUFiniNV () ;
 int assert (int) ;
 scalar_t__ stub1 () ;
 int vdp_release_x11 (int ) ;
 int vlc_decoder_device_Release (int *) ;

__attribute__((used)) static void
Close(vlc_object_t *obj)
{
    opengl_tex_converter_t *tc = (void *)obj;
    _glVDPAUFiniNV(); assert(tc->vt->GetError() == GL_NO_ERROR);
    converter_sys_t *sys = tc->priv;
    vlc_decoder_device *dec_device = sys->dec_device;
    vdp_release_x11(GetVDPAUOpaqueDevice(dec_device));
    vlc_decoder_device_Release(dec_device);
}
