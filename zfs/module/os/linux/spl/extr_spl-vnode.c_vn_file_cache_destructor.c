
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int f_lock; } ;
typedef TYPE_1__ file_t ;


 int mutex_destroy (int *) ;

__attribute__((used)) static void
vn_file_cache_destructor(void *buf, void *cdrarg)
{
 file_t *fp = buf;

 mutex_destroy(&fp->f_lock);
}
