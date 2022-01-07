
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dsl_dataset_t ;
struct TYPE_2__ {int ds_compressed_bytes; int ds_uncompressed_bytes; } ;


 TYPE_1__* dsl_dataset_phys (int *) ;

uint64_t
dsl_get_refratio(dsl_dataset_t *ds)
{
 uint64_t ratio = dsl_dataset_phys(ds)->ds_compressed_bytes == 0 ? 100 :
     (dsl_dataset_phys(ds)->ds_uncompressed_bytes * 100 /
     dsl_dataset_phys(ds)->ds_compressed_bytes);
 return (ratio);
}
