
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int jstring ;
typedef int jfieldID ;
typedef int jclass ;
struct TYPE_9__ {char* (* GetStringUTFChars ) (TYPE_1__**,int ,int ) ;int (* DeleteLocalRef ) (TYPE_1__**,int ) ;int (* ReleaseStringUTFChars ) (TYPE_1__**,int ,char const*) ;int (* GetStaticObjectField ) (TYPE_1__**,int ,int ) ;int (* GetStaticFieldID ) (TYPE_1__**,int ,char*,char*) ;int (* FindClass ) (TYPE_1__**,char*) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ CHECK_EXCEPTION () ;
 char* strdup (char const*) ;
 int stub1 (TYPE_1__**,char*) ;
 int stub2 (TYPE_1__**,int ,char*,char*) ;
 int stub3 (TYPE_1__**,int ,int ) ;
 char* stub4 (TYPE_1__**,int ,int ) ;
 int stub5 (TYPE_1__**,int ,char const*) ;
 int stub6 (TYPE_1__**,int ) ;

__attribute__((used)) static char *GetManufacturer(JNIEnv *env)
{
    char *manufacturer = ((void*)0);

    jclass clazz = (*env)->FindClass(env, "android/os/Build");
    if (CHECK_EXCEPTION())
        return ((void*)0);

    jfieldID id = (*env)->GetStaticFieldID(env, clazz, "MANUFACTURER",
                                           "Ljava/lang/String;");
    if (CHECK_EXCEPTION())
        goto end;

    jstring jstr = (*env)->GetStaticObjectField(env, clazz, id);

    if (CHECK_EXCEPTION())
        goto end;

    const char *str = (*env)->GetStringUTFChars(env, jstr, 0);
    if (str)
    {
        manufacturer = strdup(str);
        (*env)->ReleaseStringUTFChars(env, jstr, str);
    }

end:
    (*env)->DeleteLocalRef(env, clazz);
    return manufacturer;
}
