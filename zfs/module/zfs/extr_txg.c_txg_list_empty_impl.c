
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_3__ {int ** tl_head; int tl_spa; int tl_lock; } ;
typedef TYPE_1__ txg_list_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 size_t TXG_MASK ;
 int TXG_VERIFY (int ,size_t) ;

__attribute__((used)) static boolean_t
txg_list_empty_impl(txg_list_t *tl, uint64_t txg)
{
 ASSERT(MUTEX_HELD(&tl->tl_lock));
 TXG_VERIFY(tl->tl_spa, txg);
 return (tl->tl_head[txg & TXG_MASK] == ((void*)0));
}
