
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {size_t ce_flags; scalar_t__ name; } ;


 size_t CE_NAMEMASK ;
 size_t strlen (scalar_t__) ;

__attribute__((used)) static inline size_t ce_namelen(const struct cache_entry *ce)
{
    size_t len = ce->ce_flags & CE_NAMEMASK;
    if (len < CE_NAMEMASK)
        return len;
    return strlen(ce->name + CE_NAMEMASK) + CE_NAMEMASK;
}
