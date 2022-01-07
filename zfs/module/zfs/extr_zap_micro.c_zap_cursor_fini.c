
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * zc_objset; TYPE_3__* zc_leaf; TYPE_2__* zc_zap; } ;
typedef TYPE_1__ zap_cursor_t ;
struct TYPE_7__ {int l_rwlock; } ;
struct TYPE_6__ {int zap_rwlock; } ;


 int RW_READER ;
 int rw_enter (int *,int ) ;
 int zap_put_leaf (TYPE_3__*) ;
 int zap_unlockdir (TYPE_2__*,int *) ;

void
zap_cursor_fini(zap_cursor_t *zc)
{
 if (zc->zc_zap) {
  rw_enter(&zc->zc_zap->zap_rwlock, RW_READER);
  zap_unlockdir(zc->zc_zap, ((void*)0));
  zc->zc_zap = ((void*)0);
 }
 if (zc->zc_leaf) {
  rw_enter(&zc->zc_leaf->l_rwlock, RW_READER);
  zap_put_leaf(zc->zc_leaf);
  zc->zc_leaf = ((void*)0);
 }
 zc->zc_objset = ((void*)0);
}
