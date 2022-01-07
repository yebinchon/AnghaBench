
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_va_t ;


 int VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;

__attribute__((used)) static int VAAPICreateDevice(vlc_va_t *va)
{
    VLC_UNUSED(va);
    return VLC_SUCCESS;
}
