
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_10__ {scalar_t__ (* GetEnv ) (TYPE_2__**,void**,int ) ;scalar_t__ (* AttachCurrentThread ) (TYPE_2__**,int **,TYPE_1__*) ;int (* DetachCurrentThread ) (TYPE_2__**) ;} ;
struct TYPE_9__ {char const* name; int * group; int version; } ;
typedef TYPE_1__ JavaVMAttachArgs ;
typedef TYPE_2__* JavaVM ;
typedef int JNIEnv ;


 scalar_t__ JNI_OK ;
 int JNI_VERSION_1_2 ;
 int assert (int) ;
 int jni_env_key ;
 int jni_env_key_create ;
 int jni_env_key_once ;
 int * pthread_getspecific (int ) ;
 int pthread_once (int *,int ) ;
 scalar_t__ pthread_setspecific (int ,int *) ;
 scalar_t__ stub1 (TYPE_2__**,void**,int ) ;
 scalar_t__ stub2 (TYPE_2__**,int **,TYPE_1__*) ;
 int stub3 (TYPE_2__**) ;
 TYPE_2__** var_InheritAddress (int *,char*) ;

__attribute__((used)) static JNIEnv *
android_getEnvCommon(vlc_object_t *p_obj, JavaVM *jvm, const char *psz_name)
{
    assert((p_obj && !jvm) || (!p_obj && jvm));

    JNIEnv *env;

    pthread_once(&jni_env_key_once, jni_env_key_create);
    env = pthread_getspecific(jni_env_key);
    if (env == ((void*)0))
    {
        if (!jvm)
            jvm = var_InheritAddress(p_obj, "android-jvm");

        if (!jvm)
            return ((void*)0);




        if ((*jvm)->GetEnv(jvm, (void **)&env, JNI_VERSION_1_2) != JNI_OK)
        {

            JavaVMAttachArgs args;

            args.version = JNI_VERSION_1_2;
            args.name = psz_name;
            args.group = ((void*)0);

            if ((*jvm)->AttachCurrentThread(jvm, &env, &args) != JNI_OK)
                return ((void*)0);


            if (pthread_setspecific(jni_env_key, env) != 0)
            {
                (*jvm)->DetachCurrentThread(jvm);
                return ((void*)0);
            }
        }
    }

    return env;
}
