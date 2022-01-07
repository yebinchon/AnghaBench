
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dbn_lock; int dbn_dirty; int dbn_name; } ;
typedef TYPE_1__ dsl_bookmark_node_t ;


 int B_FALSE ;
 int KM_SLEEP ;
 int MUTEX_DEFAULT ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int mutex_init (int *,int *,int ,int *) ;
 int spa_strdup (char*) ;

__attribute__((used)) static dsl_bookmark_node_t *
dsl_bookmark_node_alloc(char *shortname)
{
 dsl_bookmark_node_t *dbn = kmem_alloc(sizeof (*dbn), KM_SLEEP);
 dbn->dbn_name = spa_strdup(shortname);
 dbn->dbn_dirty = B_FALSE;
 mutex_init(&dbn->dbn_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 return (dbn);
}
