
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EGLint ;
typedef int EGLSurface ;
typedef int EGLNativeWindowType ;
typedef int EGLDisplay ;
typedef int EGLConfig ;


 int eglCreateWindowSurface (int ,int ,int ,int const*) ;

__attribute__((used)) static EGLSurface CreateWindowSurface(EGLDisplay dpy, EGLConfig config,
                                      void *window, const EGLint *attrs)
{
    EGLNativeWindowType *native = window;

    return eglCreateWindowSurface(dpy, config, *native, attrs);
}
