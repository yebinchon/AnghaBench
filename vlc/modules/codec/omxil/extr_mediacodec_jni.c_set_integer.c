
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ jstring ;
typedef int jobject ;
struct TYPE_7__ {int set_integer; } ;
struct TYPE_6__ {int (* DeleteLocalRef ) (TYPE_1__**,scalar_t__) ;int (* CallVoidMethod ) (TYPE_1__**,int ,int ,scalar_t__,int) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ JNI_NEW_STRING (char const*) ;
 TYPE_5__ jfields ;
 int stub1 (TYPE_1__**,int ,int ,scalar_t__,int) ;
 int stub2 (TYPE_1__**,scalar_t__) ;

__attribute__((used)) static inline void set_integer(JNIEnv *env, jobject jobj, const char *psz_name,
                               int i_value)
{
    jstring jname = JNI_NEW_STRING(psz_name);
    if (jname)
    {
        (*env)->CallVoidMethod(env, jobj, jfields.set_integer, jname, i_value);
        (*env)->DeleteLocalRef(env, jname);
    }
}
