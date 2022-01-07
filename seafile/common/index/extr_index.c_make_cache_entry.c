
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int ce_mode; int ce_flags; int name; int sha1; } ;


 int cache_entry_size (int) ;
 struct cache_entry* calloc (int,int) ;
 int create_ce_flags (int,int) ;
 int create_ce_mode (unsigned int) ;
 int hashcpy (int ,unsigned char const*) ;
 int memcpy (int ,char const*,int) ;
 struct cache_entry* refresh_cache_entry (struct cache_entry*,char const*) ;
 int strlen (char const*) ;

struct cache_entry *make_cache_entry(unsigned int mode,
                                     const unsigned char *sha1,
                                     const char *path, const char *full_path,
                                     int stage, int refresh)
{
    int size, len;
    struct cache_entry *ce;






    len = strlen(path);
    size = cache_entry_size(len);
    ce = calloc(1, size);

    hashcpy(ce->sha1, sha1);
    memcpy(ce->name, path, len);
    ce->ce_flags = create_ce_flags(len, stage);
    ce->ce_mode = create_ce_mode(mode);

    if (refresh)
        return refresh_cache_entry(ce, full_path);

    return ce;
}
