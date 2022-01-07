
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int Display ;


 int glXQueryVersion (int *,int*,int*) ;
 int msg_Dbg (int *,char*,...) ;

__attribute__((used)) static bool CheckGLX (vlc_object_t *vd, Display *dpy)
{
    int major, minor;
    bool ok = 0;

    if (!glXQueryVersion (dpy, &major, &minor))
        msg_Dbg (vd, "GLX extension not available");
    else
    if (major != 1)
        msg_Dbg (vd, "GLX extension version %d.%d unknown", major, minor);
    else
    if (minor < 3)
        msg_Dbg (vd, "GLX extension version %d.%d too old", major, minor);
    else
    {
        msg_Dbg (vd, "using GLX extension version %d.%d", major, minor);
        ok = 1;
    }
    return ok;
}
