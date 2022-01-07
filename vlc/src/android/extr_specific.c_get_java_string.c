
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int jstring ;
typedef int jfieldID ;
typedef int jclass ;
struct TYPE_10__ {char* (* GetStringUTFChars ) (TYPE_1__**,int ,int ) ;int (* DeleteLocalRef ) (TYPE_1__**,int ) ;int (* ReleaseStringUTFChars ) (TYPE_1__**,int ,char const*) ;int (* GetStaticObjectField ) (TYPE_1__**,int ,int ) ;int (* ExceptionClear ) (TYPE_1__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_1__**) ;int (* GetStaticFieldID ) (TYPE_1__**,int ,char const*,char*) ;} ;
typedef TYPE_1__* JNIEnv ;


 char* strdup (char const*) ;
 int stub1 (TYPE_1__**,int ,char const*,char*) ;
 scalar_t__ stub2 (TYPE_1__**) ;
 int stub3 (TYPE_1__**) ;
 int stub4 (TYPE_1__**,int ,int ) ;
 char* stub5 (TYPE_1__**,int ,int ) ;
 int stub6 (TYPE_1__**,int ,char const*) ;
 int stub7 (TYPE_1__**,int ) ;

__attribute__((used)) static char *
get_java_string(JNIEnv *env, jclass clazz, const char *psz_name)
{
    jfieldID id = (*env)->GetStaticFieldID(env, clazz, psz_name,
                                           "Ljava/lang/String;");
    if ((*env)->ExceptionCheck(env))
    {
        (*env)->ExceptionClear(env);
        return ((void*)0);
    }

    jstring jstr = (*env)->GetStaticObjectField(env, clazz, id);

    const char *psz_str = (*env)->GetStringUTFChars(env, jstr, 0);
    if (psz_str == ((void*)0))
        return ((void*)0);

    char *psz_strdup = strdup(psz_str);

    (*env)->ReleaseStringUTFChars(env, jstr, psz_str);
    (*env)->DeleteLocalRef(env, jstr);

    return psz_strdup;
}
