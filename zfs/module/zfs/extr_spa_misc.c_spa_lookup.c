
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int spa_name; } ;
typedef TYPE_1__ spa_t ;
typedef int avl_index_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;
 int spa_namespace_avl ;
 int spa_namespace_lock ;
 int strlcpy (int ,char const*,int) ;
 char* strpbrk (int ,char*) ;

spa_t *
spa_lookup(const char *name)
{
 static spa_t search;
 spa_t *spa;
 avl_index_t where;
 char *cp;

 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 (void) strlcpy(search.spa_name, name, sizeof (search.spa_name));





 cp = strpbrk(search.spa_name, "/@#");
 if (cp != ((void*)0))
  *cp = '\0';

 spa = avl_find(&spa_namespace_avl, &search, &where);

 return (spa);
}
