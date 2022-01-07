
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_jvm; } ;
typedef int JNIEnv ;
typedef TYPE_1__ AWindowHandler ;


 int * android_getEnvCommon (int *,int ,char*) ;

__attribute__((used)) static JNIEnv*
AWindowHandler_getEnv(AWindowHandler *p_awh)
{
    return android_getEnvCommon(((void*)0), p_awh->p_jvm, "AWindowHandler");
}
