
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AWindowHandler ;
typedef int ANativeWindow ;


 int * AWindowHandler_getANativeWindow (int *,int ) ;
 int AWindow_SurfaceTexture ;

__attribute__((used)) static inline ANativeWindow *
SurfaceTexture_getANativeWindow(AWindowHandler *p_awh)
{
    return AWindowHandler_getANativeWindow(p_awh, AWindow_SurfaceTexture);
}
