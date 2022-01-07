
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* VLC_Compiler () ;

const char * libvlc_get_compiler(void)
{
    return VLC_Compiler();
}
