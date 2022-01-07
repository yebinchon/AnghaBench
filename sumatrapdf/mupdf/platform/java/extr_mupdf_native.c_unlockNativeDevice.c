
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* unlock ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ NativeDeviceInfo ;
typedef int JNIEnv ;


 int stub1 (int *,TYPE_1__*) ;

__attribute__((used)) static void unlockNativeDevice(JNIEnv *env, NativeDeviceInfo *info)
{
 if (info)
  info->unlock(env, info);
}
