
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int jobject ;
typedef int * jfieldID ;
typedef int jclass ;
struct TYPE_14__ {int (* DeleteLocalRef ) (TYPE_1__**,int ) ;scalar_t__ (* GetIntField ) (TYPE_1__**,int ,int *) ;int (* ExceptionClear ) (TYPE_1__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_1__**) ;int * (* GetFieldID ) (TYPE_1__**,int ,char*,char*) ;int (* GetObjectClass ) (TYPE_1__**,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 int stub1 (TYPE_1__**,int ) ;
 scalar_t__ stub10 (TYPE_1__**,int ,int *) ;
 int stub11 (TYPE_1__**,int ) ;
 scalar_t__ stub2 (TYPE_1__**) ;
 int stub3 (TYPE_1__**) ;
 int * stub4 (TYPE_1__**,int ,char*,char*) ;
 scalar_t__ stub5 (TYPE_1__**) ;
 int stub6 (TYPE_1__**) ;
 int * stub7 (TYPE_1__**,int ,char*,char*) ;
 scalar_t__ stub8 (TYPE_1__**) ;
 int stub9 (TYPE_1__**) ;

__attribute__((used)) static void *
NativeSurface_getHandle(JNIEnv *p_env, jobject jsurf)
{
    jclass clz;
    jfieldID fid;
    intptr_t p_surface_handle = 0;

    clz = (*p_env)->GetObjectClass(p_env, jsurf);
    if ((*p_env)->ExceptionCheck(p_env))
    {
        (*p_env)->ExceptionClear(p_env);
        return ((void*)0);
    }
    fid = (*p_env)->GetFieldID(p_env, clz, "mSurface", "I");
    if (fid == ((void*)0))
    {
        if ((*p_env)->ExceptionCheck(p_env))
            (*p_env)->ExceptionClear(p_env);
        fid = (*p_env)->GetFieldID(p_env, clz, "mNativeSurface", "I");
        if (fid == ((void*)0))
        {
            if ((*p_env)->ExceptionCheck(p_env))
                (*p_env)->ExceptionClear(p_env);
        }
    }
    if (fid != ((void*)0))
        p_surface_handle = (intptr_t)(*p_env)->GetIntField(p_env, jsurf, fid);
    (*p_env)->DeleteLocalRef(p_env, clz);

    return (void *)p_surface_handle;
}
