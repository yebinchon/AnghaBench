
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ (* GetEnv ) (TYPE_2__**,void**,int ) ;scalar_t__ (* AttachCurrentThread ) (TYPE_2__**,int **,TYPE_1__*) ;} ;
struct TYPE_6__ {char* name; int * group; int version; } ;
typedef TYPE_1__ JavaVMAttachArgs ;
typedef int JNIEnv ;


 scalar_t__ JNI_OK ;
 int JNI_VERSION_1_2 ;
 TYPE_2__** s_jvm ;
 scalar_t__ stub1 (TYPE_2__**,void**,int ) ;
 scalar_t__ stub2 (TYPE_2__**,int **,TYPE_1__*) ;

__attribute__((used)) static JNIEnv *get_env(bool *p_detach)
{
    JNIEnv *env;
    if ((*s_jvm)->GetEnv(s_jvm, (void **)&env, JNI_VERSION_1_2) != JNI_OK)
    {

        JavaVMAttachArgs args;

        args.version = JNI_VERSION_1_2;
        args.name = "config_GetGenericDir";
        args.group = ((void*)0);

        if ((*s_jvm)->AttachCurrentThread(s_jvm, &env, &args) != JNI_OK)
            return ((void*)0);
        *p_detach = 1;
    }
    else
        *p_detach = 0;
    return env;
}
