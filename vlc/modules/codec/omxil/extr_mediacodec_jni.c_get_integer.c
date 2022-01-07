
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ jstring ;
typedef int jobject ;
struct TYPE_7__ {int get_integer; } ;
struct TYPE_6__ {int (* CallIntMethod ) (TYPE_1__**,int ,int ,scalar_t__) ;int (* DeleteLocalRef ) (TYPE_1__**,scalar_t__) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ CHECK_EXCEPTION () ;
 scalar_t__ JNI_NEW_STRING (char const*) ;
 TYPE_4__ jfields ;
 int stub1 (TYPE_1__**,int ,int ,scalar_t__) ;
 int stub2 (TYPE_1__**,scalar_t__) ;

__attribute__((used)) static inline int get_integer(JNIEnv *env, jobject obj, const char *psz_name)
{
    jstring jname = JNI_NEW_STRING(psz_name);
    if (jname)
    {
        int i_ret = (*env)->CallIntMethod(env, obj, jfields.get_integer, jname);
        (*env)->DeleteLocalRef(env, jname);


        if (CHECK_EXCEPTION())
            return 0;
        return i_ret;
    }
    else
        return 0;
}
