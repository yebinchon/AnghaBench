
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int name; } ;


 int cache_name_compare (char const*,int,int ,int) ;
 int ce_namelen (struct cache_entry const*) ;

__attribute__((used)) static int same_name(const struct cache_entry *ce, const char *name, int namelen, int icase)
{
    int len = ce_namelen(ce);





    if (len == namelen && !cache_name_compare(name, namelen, ce->name, len))
        return 1;
    else
        return 0;
}
