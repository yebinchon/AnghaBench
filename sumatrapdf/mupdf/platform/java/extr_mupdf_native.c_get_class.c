
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int * jclass ;
struct TYPE_6__ {int (* DeleteLocalRef ) (TYPE_1__**,int *) ;int * (* NewGlobalRef ) (TYPE_1__**,int *) ;int * (* FindClass ) (TYPE_1__**,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int LOGI (char*,char const*) ;
 int * current_class ;
 char const* current_class_name ;
 int * stub1 (TYPE_1__**,char const*) ;
 int * stub2 (TYPE_1__**,int *) ;
 int stub3 (TYPE_1__**,int *) ;

__attribute__((used)) static jclass get_class(int *failed, JNIEnv *env, const char *name)
{
 jclass local;

 if (*failed) return ((void*)0);

 current_class_name = name;
 local = (*env)->FindClass(env, name);
 if (!local)
 {
  LOGI("Failed to find class %s", name);
  *failed = 1;
  return ((void*)0);
 }

 current_class = (*env)->NewGlobalRef(env, local);
 if (!current_class)
 {
  LOGI("Failed to make global ref for %s", name);
  *failed = 1;
  return ((void*)0);
 }

 (*env)->DeleteLocalRef(env, local);

 return current_class;
}
