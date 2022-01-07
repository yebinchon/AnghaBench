
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EGLDisplay ;


 int EGL_CLIENT_APIS ;
 char* eglQueryString (int ,int ) ;
 int vlc_gl_StrHasToken (char const*,char const*) ;

__attribute__((used)) static bool CheckAPI (EGLDisplay dpy, const char *api)
{
    const char *apis = eglQueryString (dpy, EGL_CLIENT_APIS);
    return vlc_gl_StrHasToken(apis, api);
}
