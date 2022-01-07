
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int modifier; } ;


 int free (struct cache_entry*) ;
 int g_free (int ) ;

void cache_entry_free (struct cache_entry *ce)
{
    g_free (ce->modifier);
    free (ce);
}
