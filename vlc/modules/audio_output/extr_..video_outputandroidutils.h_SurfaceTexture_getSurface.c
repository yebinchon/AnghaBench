
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int AWindowHandler ;


 int AWindowHandler_getSurface (int *,int ) ;
 int AWindow_SurfaceTexture ;

__attribute__((used)) static inline jobject
SurfaceTexture_getSurface(AWindowHandler *p_awh)
{
    return AWindowHandler_getSurface(p_awh, AWindow_SurfaceTexture);
}
