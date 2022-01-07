
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int dummy; } ;
typedef int SeafStat ;


 int fill_stat_cache_info (struct cache_entry*,int *) ;
 scalar_t__ seaf_stat (char const*,int *) ;
 int seaf_warning (char*,char const*) ;

__attribute__((used)) static struct cache_entry *refresh_cache_entry(struct cache_entry *ce,
                                               const char *full_path)
{
    SeafStat st;

    if (seaf_stat (full_path, &st) < 0) {
        seaf_warning("Failed to stat %s.\n", full_path);
        return ((void*)0);
    }
    fill_stat_cache_info(ce, &st);

    return ce;
}
