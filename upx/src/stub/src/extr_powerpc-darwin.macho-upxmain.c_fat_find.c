
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_5__ {scalar_t__ cputype; int offset; } ;
struct TYPE_4__ {unsigned int nfat_arch; } ;
typedef TYPE_1__ Fat_header ;
typedef TYPE_2__ Fat_arch ;


 scalar_t__ CPU_TYPE_POWERPC ;

__attribute__((used)) static off_t
fat_find(Fat_header *fh)
{
    Fat_arch *fa = (Fat_arch *)(1+ fh);

    unsigned j;
    for (j= 0; j < fh->nfat_arch; ++j, ++fa) {
        if (CPU_TYPE_POWERPC==fa->cputype) {
            return fa->offset;
        }
    }
    return 0;
}
