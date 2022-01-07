
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int dummy; } ;


 unsigned int create_ce_mode (unsigned int) ;

__attribute__((used)) static inline unsigned int ce_mode_from_stat(struct cache_entry *ce, unsigned int mode)
{
    return create_ce_mode(mode);
}
