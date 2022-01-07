
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_gl_t ;
typedef int GLubyte ;


 void* glXGetProcAddressARB (int const*) ;

__attribute__((used)) static void *GetSymbol(vlc_gl_t *gl, const char *procname)
{
    (void) gl;
    return glXGetProcAddressARB ((const GLubyte *)procname);
}
