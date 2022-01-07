
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * jmethodID ;
struct TYPE_4__ {int * (* GetMethodID ) (TYPE_1__**,int ,char const*,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int LOGI (char*,int ,char const*,char const*) ;
 int current_class ;
 int current_class_name ;
 int * stub1 (TYPE_1__**,int ,char const*,char const*) ;

__attribute__((used)) static jmethodID get_method(int *failed, JNIEnv *env, const char *method, const char *sig)
{
 jmethodID mid;

 if (*failed || !current_class) return ((void*)0);

 mid = (*env)->GetMethodID(env, current_class, method, sig);
 if (mid == 0)
 {
  LOGI("Failed to get method for %s %s %s", current_class_name, method, sig);
  *failed = 1;
 }

 return mid;
}
