
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t tl_offset; int ** tl_head; int * tl_spa; int tl_lock; } ;
typedef TYPE_1__ txg_list_t ;
typedef int spa_t ;


 int MUTEX_DEFAULT ;
 int TXG_SIZE ;
 int mutex_init (int *,int *,int ,int *) ;

void
txg_list_create(txg_list_t *tl, spa_t *spa, size_t offset)
{
 int t;

 mutex_init(&tl->tl_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));

 tl->tl_offset = offset;
 tl->tl_spa = spa;

 for (t = 0; t < TXG_SIZE; t++)
  tl->tl_head[t] = ((void*)0);
}
