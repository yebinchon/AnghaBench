
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * jfieldID ;
struct TYPE_4__ {int * (* GetFieldID ) (TYPE_1__**,int ,char const*,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int LOGI (char*,int ,char const*,char const*) ;
 int current_class ;
 int current_class_name ;
 int * stub1 (TYPE_1__**,int ,char const*,char const*) ;

__attribute__((used)) static jfieldID get_field(int *failed, JNIEnv *env, const char *field, const char *sig)
{
 jfieldID fid;

 if (*failed || !current_class) return ((void*)0);

 fid = (*env)->GetFieldID(env, current_class, field, sig);
 if (fid == 0)
 {
  LOGI("Failed to get field for %s %s %s", current_class_name, field, sig);
  *failed = 1;
 }

 return fid;
}
