
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; int size; } ;
typedef TYPE_1__ copy_cache_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int __MAX (unsigned int,int) ;
 int aligned_alloc (int,int ) ;

int CopyInitCache(copy_cache_t *cache, unsigned width)
{






    (void) cache; (void) width;

    return VLC_SUCCESS;
}
