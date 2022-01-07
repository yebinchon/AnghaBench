
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int int64_t ;


 int count_unflushed_space_cb ;
 scalar_t__* dump_opt ;
 int iterate_through_spacemap_logs (int *,int ,int *) ;

__attribute__((used)) static int64_t
get_unflushed_alloc_space(spa_t *spa)
{
 if (dump_opt['L'])
  return (0);

 int64_t ualloc_space = 0;
 iterate_through_spacemap_logs(spa, count_unflushed_space_cb,
     &ualloc_space);
 return (ualloc_space);
}
