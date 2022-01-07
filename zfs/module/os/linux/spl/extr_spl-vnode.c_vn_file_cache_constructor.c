
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int f_list; int f_lock; int f_ref; } ;
typedef TYPE_1__ file_t ;


 int INIT_LIST_HEAD (int *) ;
 int MUTEX_DEFAULT ;
 int atomic_set (int *,int ) ;
 int mutex_init (int *,int *,int ,int *) ;

__attribute__((used)) static int
vn_file_cache_constructor(void *buf, void *cdrarg, int kmflags)
{
 file_t *fp = buf;

 atomic_set(&fp->f_ref, 0);
 mutex_init(&fp->f_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 INIT_LIST_HEAD(&fp->f_list);

 return (0);
}
