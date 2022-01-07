
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ ub_magic; } ;
typedef TYPE_1__ uberblock_t ;


 scalar_t__ BSWAP_64 (int ) ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 scalar_t__ UBERBLOCK_MAGIC ;
 int byteswap_uint64_array (TYPE_1__*,int) ;

int
uberblock_verify(uberblock_t *ub)
{
 if (ub->ub_magic == BSWAP_64((uint64_t)UBERBLOCK_MAGIC))
  byteswap_uint64_array(ub, sizeof (uberblock_t));

 if (ub->ub_magic != UBERBLOCK_MAGIC)
  return (SET_ERROR(EINVAL));

 return (0);
}
