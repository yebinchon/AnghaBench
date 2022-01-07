
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_6__ {int ninserts; } ;
typedef TYPE_1__ ckh_t ;


 int assert (int ) ;
 scalar_t__ ckh_grow (int *,TYPE_1__*) ;
 int ckh_search (TYPE_1__*,void const*,int *,int *) ;
 scalar_t__ ckh_try_insert (TYPE_1__*,void const**,void const**) ;

bool
ckh_insert(tsd_t *tsd, ckh_t *ckh, const void *key, const void *data) {
 bool ret;

 assert(ckh != ((void*)0));
 assert(ckh_search(ckh, key, ((void*)0), ((void*)0)));





 while (ckh_try_insert(ckh, &key, &data)) {
  if (ckh_grow(tsd, ckh)) {
   ret = 1;
   goto label_return;
  }
 }

 ret = 0;
label_return:
 return ret;
}
