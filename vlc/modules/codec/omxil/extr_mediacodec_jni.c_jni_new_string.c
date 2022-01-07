
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * jstring ;
struct TYPE_4__ {int * (* NewStringUTF ) (TYPE_1__**,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int CHECK_EXCEPTION () ;
 int * stub1 (TYPE_1__**,char const*) ;

__attribute__((used)) static inline jstring jni_new_string(JNIEnv *env, const char *psz_string)
{
    jstring jstring = (*env)->NewStringUTF(env, psz_string);
    return !CHECK_EXCEPTION() ? jstring : ((void*)0);
}
