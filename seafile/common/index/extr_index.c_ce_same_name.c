
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int name; } ;


 int ce_namelen (struct cache_entry*) ;
 int memcmp (int ,int ,int) ;

int ce_same_name(struct cache_entry *a, struct cache_entry *b)
{
    int len = ce_namelen(a);
    return ce_namelen(b) == len && !memcmp(a->name, b->name, len);
}
