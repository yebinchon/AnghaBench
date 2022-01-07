
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ clazz; } ;
struct TYPE_10__ {scalar_t__ clazz; } ;
struct TYPE_14__ {TYPE_2__ System; TYPE_1__ Environment; } ;
struct TYPE_13__ {int (* DeleteGlobalRef ) (TYPE_4__**,scalar_t__) ;} ;
struct TYPE_12__ {scalar_t__ (* GetEnv ) (TYPE_3__**,void**,int ) ;} ;
typedef TYPE_3__* JavaVM ;
typedef TYPE_4__* JNIEnv ;


 size_t GENERIC_DIR_COUNT ;
 scalar_t__ JNI_OK ;
 int JNI_VERSION_1_2 ;
 TYPE_8__ fields ;
 int free (int ) ;
 int * ppsz_generic_names ;
 scalar_t__ stub1 (TYPE_3__**,void**,int ) ;
 int stub2 (TYPE_4__**,scalar_t__) ;
 int stub3 (TYPE_4__**,scalar_t__) ;

void
JNI_OnUnload(JavaVM* vm, void* reserved)
{
    (void) reserved;

    for (size_t i = 0; i < GENERIC_DIR_COUNT; ++i)
        free(ppsz_generic_names[i]);

    JNIEnv* env = ((void*)0);
    if ((*vm)->GetEnv(vm, (void**) &env, JNI_VERSION_1_2) != JNI_OK)
        return;

    if (fields.Environment.clazz)
        (*env)->DeleteGlobalRef(env, fields.Environment.clazz);

    if (fields.System.clazz)
        (*env)->DeleteGlobalRef(env, fields.System.clazz);
}
