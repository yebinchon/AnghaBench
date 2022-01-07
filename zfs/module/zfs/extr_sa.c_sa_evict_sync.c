
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;

__attribute__((used)) static void
sa_evict_sync(void *dbu)
{
 panic("evicting sa dbuf\n");
}
