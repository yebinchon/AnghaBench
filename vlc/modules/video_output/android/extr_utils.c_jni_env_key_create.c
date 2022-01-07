
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jni_detach_thread ;
 int jni_env_key ;
 int pthread_key_create (int *,int ) ;

__attribute__((used)) static void jni_env_key_create()
{


    pthread_key_create(&jni_env_key, jni_detach_thread);
}
