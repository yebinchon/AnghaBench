
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {TYPE_2__* priv; } ;
typedef TYPE_1__ opengl_tex_converter_t ;
struct TYPE_4__ {int device; } ;
typedef TYPE_2__ converter_sys_t ;


 int vlc_decoder_device_Release (int ) ;

__attribute__((used)) static void Close(vlc_object_t *obj)
{
    opengl_tex_converter_t *tc = (void *)obj;
    converter_sys_t *p_sys = tc->priv;
    vlc_decoder_device_Release(p_sys->device);
}
