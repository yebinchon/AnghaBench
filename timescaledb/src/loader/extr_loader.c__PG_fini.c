
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int post_parse_analyze_hook ;
 int prev_post_parse_analyze_hook ;
 int prev_shmem_startup_hook ;
 int shmem_startup_hook ;

void
_PG_fini(void)
{
 post_parse_analyze_hook = prev_post_parse_analyze_hook;
 shmem_startup_hook = prev_shmem_startup_hook;

}
