
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ztest_ds_t ;
typedef void* uint64_t ;
struct TYPE_5__ {void* lr_length; void* lr_offset; void* lr_foid; } ;
typedef TYPE_1__ lr_truncate_t ;


 int B_FALSE ;
 TYPE_1__* ztest_lr_alloc (int,int *) ;
 int ztest_lr_free (TYPE_1__*,int,int *) ;
 int ztest_replay_truncate (int *,TYPE_1__*,int ) ;

__attribute__((used)) static int
ztest_truncate(ztest_ds_t *zd, uint64_t object, uint64_t offset, uint64_t size)
{
 lr_truncate_t *lr;
 int error;

 lr = ztest_lr_alloc(sizeof (*lr), ((void*)0));

 lr->lr_foid = object;
 lr->lr_offset = offset;
 lr->lr_length = size;

 error = ztest_replay_truncate(zd, lr, B_FALSE);

 ztest_lr_free(lr, sizeof (*lr), ((void*)0));

 return (error);
}
