
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CE_NAMEMASK ;
 unsigned int CE_STAGESHIFT ;

__attribute__((used)) static inline unsigned create_ce_flags(size_t len, unsigned stage)
{
    if (len >= CE_NAMEMASK)
        len = CE_NAMEMASK;
    return (len | (stage << CE_STAGESHIFT));
}
