
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ jsize ;
typedef int jobject ;
struct TYPE_6__ {scalar_t__ (* GetStringUTFLength ) (TYPE_1__**,int ) ;char* (* GetStringUTFChars ) (TYPE_1__**,int ,int *) ;int (* ReleaseStringUTFChars ) (TYPE_1__**,int ,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int memcmp (char const*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ stub1 (TYPE_1__**,int ) ;
 char* stub2 (TYPE_1__**,int ,int *) ;
 int stub3 (TYPE_1__**,int ,char const*) ;

__attribute__((used)) static int jstrcmp(JNIEnv* env, jobject str, const char* str2)
{
    jsize len = (*env)->GetStringUTFLength(env, str);
    if (len != (jsize) strlen(str2))
        return -1;
    const char *ptr = (*env)->GetStringUTFChars(env, str, ((void*)0));
    int ret = memcmp(ptr, str2, len);
    (*env)->ReleaseStringUTFChars(env, str, ptr);
    return ret;
}
