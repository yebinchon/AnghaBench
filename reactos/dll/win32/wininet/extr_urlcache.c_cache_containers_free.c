
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_ENTRY (int ,int ,int ) ;
 int UrlContainers ;
 int cache_container ;
 int cache_container_delete_container (int ) ;
 int entry ;
 int list_empty (int *) ;
 int list_head (int *) ;

__attribute__((used)) static void cache_containers_free(void)
{
    while(!list_empty(&UrlContainers))
        cache_container_delete_container(
            LIST_ENTRY(list_head(&UrlContainers), cache_container, entry)
        );
}
