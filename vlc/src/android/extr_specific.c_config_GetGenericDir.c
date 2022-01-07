
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


typedef int * jstring ;
typedef int * jobject ;
struct TYPE_19__ {char* (* GetStringUTFChars ) (TYPE_3__**,int *,int ) ;int (* DeleteLocalRef ) (TYPE_3__**,int *) ;int (* ReleaseStringUTFChars ) (TYPE_3__**,int *,char const*) ;int * (* CallObjectMethod ) (TYPE_3__**,int *,int ) ;int * (* CallStaticObjectMethod ) (TYPE_3__**,int ,int ,int *) ;int (* ExceptionClear ) (TYPE_3__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_3__**) ;int * (* NewStringUTF ) (TYPE_3__**,char const*) ;} ;
struct TYPE_18__ {int getAbsolutePath; } ;
struct TYPE_17__ {int getExternalStoragePublicDirectory; int clazz; } ;
struct TYPE_16__ {TYPE_2__ File; TYPE_1__ Environment; } ;
typedef TYPE_3__* JNIEnv ;


 TYPE_15__ fields ;
 TYPE_3__** get_env (int*) ;
 int release_env (int) ;
 char* strdup (char const*) ;
 int * stub1 (TYPE_3__**,char const*) ;
 int stub10 (TYPE_3__**,int *) ;
 scalar_t__ stub2 (TYPE_3__**) ;
 int stub3 (TYPE_3__**) ;
 int * stub4 (TYPE_3__**,int ,int ,int *) ;
 int stub5 (TYPE_3__**,int *) ;
 int * stub6 (TYPE_3__**,int *,int ) ;
 int stub7 (TYPE_3__**,int *) ;
 char* stub8 (TYPE_3__**,int *,int ) ;
 int stub9 (TYPE_3__**,int *,char const*) ;

__attribute__((used)) static char *config_GetGenericDir(const char *psz_name)
{
    JNIEnv *env;
    bool b_detach;
    char *psz_ret = ((void*)0);

    env = get_env(&b_detach);
    if (env == ((void*)0))
        return ((void*)0);

    jstring jname= (*env)->NewStringUTF(env, psz_name);
    if ((*env)->ExceptionCheck(env))
    {
        (*env)->ExceptionClear(env);
        jname = ((void*)0);
    }
    if (jname == ((void*)0))
        goto error;

    jobject jfile = (*env)->CallStaticObjectMethod(env,
                        fields.Environment.clazz,
                        fields.Environment.getExternalStoragePublicDirectory,
                        jname);
    (*env)->DeleteLocalRef(env, jname);
    if (jfile == ((void*)0))
        goto error;

    jstring jpath = (*env)->CallObjectMethod(env, jfile,
                                             fields.File.getAbsolutePath);
    (*env)->DeleteLocalRef(env, jfile);

    const char *psz_path = (*env)->GetStringUTFChars(env, jpath, 0);
    if (psz_path == ((void*)0))
        goto error;
    psz_ret = strdup(psz_path);
    (*env)->ReleaseStringUTFChars(env, jpath, psz_path);
    (*env)->DeleteLocalRef(env, jpath);

error:
    release_env(b_detach);
    return psz_ret;
}
