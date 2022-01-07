
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_6__ {scalar_t__ cputype; int offset; } ;
struct TYPE_5__ {int nfat_arch; } ;
typedef TYPE_1__ Fat_header ;
typedef TYPE_2__ Fat_arch ;


 scalar_t__ CPU_TYPE_I386 ;
 int bswap (TYPE_1__*,int) ;

__attribute__((used)) static off_t
fat_find(Fat_header *fh)
{
    Fat_arch *fa = (Fat_arch *)(1+ fh);
    bswap(fh, sizeof(*fh) + (fh->nfat_arch>>24)*sizeof(*fa));
    unsigned j;
    for (j= 0; j < fh->nfat_arch; ++j, ++fa) {
        if (CPU_TYPE_I386==fa->cputype) {
            return fa->offset;
        }
    }
    return 0;
}
