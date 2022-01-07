
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* DetachCurrentThread ) (TYPE_1__**) ;} ;


 TYPE_1__** s_jvm ;
 int stub1 (TYPE_1__**) ;

__attribute__((used)) static void release_env(bool b_detach)
{
    if (b_detach)
        (*s_jvm)->DetachCurrentThread(s_jvm);
}
