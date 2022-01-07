
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zl_max_block_size; } ;
typedef TYPE_1__ zilog_t ;
typedef int zil_chain_t ;
typedef int uint64_t ;
typedef int lr_write_t ;



uint64_t
zil_max_copied_data(zilog_t *zilog)
{
 return ((zilog->zl_max_block_size - sizeof (zil_chain_t)) / 2 -
     sizeof (lr_write_t));
}
