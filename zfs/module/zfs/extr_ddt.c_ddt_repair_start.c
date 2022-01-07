
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
typedef int ddt_t ;
typedef int ddt_key_t ;
struct TYPE_5__ {int dde_phys; } ;
typedef TYPE_1__ ddt_entry_t ;
typedef int blkptr_t ;


 int DDT_CLASSES ;
 int DDT_CLASS_UNIQUE ;
 int DDT_TYPES ;
 int bzero (int ,int) ;
 TYPE_1__* ddt_alloc (int *) ;
 int ddt_key_fill (int *,int const*) ;
 scalar_t__ ddt_object_lookup (int *,int,int,TYPE_1__*) ;

ddt_entry_t *
ddt_repair_start(ddt_t *ddt, const blkptr_t *bp)
{
 ddt_key_t ddk;
 ddt_entry_t *dde;

 ddt_key_fill(&ddk, bp);

 dde = ddt_alloc(&ddk);

 for (enum ddt_type type = 0; type < DDT_TYPES; type++) {
  for (enum ddt_class class = 0; class < DDT_CLASSES; class++) {





   if (class != DDT_CLASS_UNIQUE &&
       ddt_object_lookup(ddt, type, class, dde) == 0)
    return (dde);
  }
 }

 bzero(dde->dde_phys, sizeof (dde->dde_phys));

 return (dde);
}
