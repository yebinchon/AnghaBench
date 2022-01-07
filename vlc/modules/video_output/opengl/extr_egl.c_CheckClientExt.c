
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EGL_EXTENSIONS ;
 int EGL_NO_DISPLAY ;
 char* eglQueryString (int ,int ) ;
 int vlc_gl_StrHasToken (char const*,char const*) ;

__attribute__((used)) static bool CheckClientExt(const char *name)
{
    const char *exts = eglQueryString(EGL_NO_DISPLAY, EGL_EXTENSIONS);
    return vlc_gl_StrHasToken(exts, name);
}
