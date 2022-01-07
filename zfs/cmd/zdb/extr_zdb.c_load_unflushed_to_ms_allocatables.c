
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int maptype_t ;


 int iterate_through_spacemap_logs (int *,int ,int *) ;
 int load_unflushed_cb ;

__attribute__((used)) static void
load_unflushed_to_ms_allocatables(spa_t *spa, maptype_t maptype)
{
 iterate_through_spacemap_logs(spa, load_unflushed_cb, &maptype);
}
