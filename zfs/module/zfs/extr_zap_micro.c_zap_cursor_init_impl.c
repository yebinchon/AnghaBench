
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_prefetch; scalar_t__ zc_cd; scalar_t__ zc_hash; void* zc_serialized; void* zc_zapobj; int * zc_leaf; int * zc_zap; int * zc_objset; } ;
typedef TYPE_1__ zap_cursor_t ;
typedef void* uint64_t ;
typedef int objset_t ;
typedef int boolean_t ;



__attribute__((used)) static void
zap_cursor_init_impl(zap_cursor_t *zc, objset_t *os, uint64_t zapobj,
    uint64_t serialized, boolean_t prefetch)
{
 zc->zc_objset = os;
 zc->zc_zap = ((void*)0);
 zc->zc_leaf = ((void*)0);
 zc->zc_zapobj = zapobj;
 zc->zc_serialized = serialized;
 zc->zc_hash = 0;
 zc->zc_cd = 0;
 zc->zc_prefetch = prefetch;
}
