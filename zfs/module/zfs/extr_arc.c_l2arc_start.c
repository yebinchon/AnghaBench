
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FWRITE ;
 int TS_RUN ;
 int defclsyspri ;
 int l2arc_feed_thread ;
 int p0 ;
 int spa_mode_global ;
 int thread_create (int *,int ,int ,int *,int ,int *,int ,int ) ;

void
l2arc_start(void)
{
 if (!(spa_mode_global & FWRITE))
  return;

 (void) thread_create(((void*)0), 0, l2arc_feed_thread, ((void*)0), 0, &p0,
     TS_RUN, defclsyspri);
}
