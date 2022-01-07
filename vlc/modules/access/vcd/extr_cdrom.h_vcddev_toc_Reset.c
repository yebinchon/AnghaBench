
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_sectors; } ;
typedef TYPE_1__ vcddev_toc_t ;


 int free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static inline void vcddev_toc_Reset( vcddev_toc_t *toc )
{
    free(toc->p_sectors);
    memset(toc, 0, sizeof(*toc));
}
