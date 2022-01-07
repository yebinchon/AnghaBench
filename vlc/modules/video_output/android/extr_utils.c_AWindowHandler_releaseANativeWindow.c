
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AWindow_ID { ____Placeholder_AWindow_ID } AWindow_ID ;
typedef int JNIEnv ;
typedef int AWindowHandler ;


 int * AWindowHandler_getEnv (int *) ;
 int AWindowHandler_releaseANativeWindowEnv (int *,int *,int) ;

void AWindowHandler_releaseANativeWindow(AWindowHandler *p_awh,
                                         enum AWindow_ID id)
{
    JNIEnv *p_env = AWindowHandler_getEnv(p_awh);
    if (p_env)
        AWindowHandler_releaseANativeWindowEnv(p_awh, p_env, id);
}
