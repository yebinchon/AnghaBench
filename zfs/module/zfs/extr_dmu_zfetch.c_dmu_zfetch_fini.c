
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zstream_t ;
struct TYPE_4__ {int * zf_dnode; int zf_lock; int zf_stream; } ;
typedef TYPE_1__ zfetch_t ;


 int dmu_zfetch_stream_remove (TYPE_1__*,int *) ;
 int list_destroy (int *) ;
 int * list_head (int *) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dmu_zfetch_fini(zfetch_t *zf)
{
 zstream_t *zs;

 mutex_enter(&zf->zf_lock);
 while ((zs = list_head(&zf->zf_stream)) != ((void*)0))
  dmu_zfetch_stream_remove(zf, zs);
 mutex_exit(&zf->zf_lock);
 list_destroy(&zf->zf_stream);
 mutex_destroy(&zf->zf_lock);

 zf->zf_dnode = ((void*)0);
}
