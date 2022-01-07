
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_gl_t ;


 int VLC_UNUSED (int *) ;
 void* wglGetProcAddress (char const*) ;

__attribute__((used)) static void *OurGetProcAddress(vlc_gl_t *gl, const char *name)
{
    VLC_UNUSED(gl);
    return wglGetProcAddress(name);
}
