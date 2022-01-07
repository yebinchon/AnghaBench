
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* cache_prefix; struct TYPE_5__* path; int mutex; int entry; } ;
typedef TYPE_1__ cache_container ;


 int CloseHandle (int ) ;
 int cache_container_close_index (TYPE_1__*) ;
 int heap_free (TYPE_1__*) ;
 int list_remove (int *) ;

__attribute__((used)) static void cache_container_delete_container(cache_container *pContainer)
{
    list_remove(&pContainer->entry);

    cache_container_close_index(pContainer);
    CloseHandle(pContainer->mutex);
    heap_free(pContainer->path);
    heap_free(pContainer->cache_prefix);
    heap_free(pContainer);
}
