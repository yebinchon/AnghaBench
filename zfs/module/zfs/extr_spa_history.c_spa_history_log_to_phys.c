
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int sh_phys_max_off; int sh_pool_create_len; } ;
typedef TYPE_1__ spa_history_phys_t ;



__attribute__((used)) static uint64_t
spa_history_log_to_phys(uint64_t log_off, spa_history_phys_t *shpp)
{
 uint64_t phys_len;

 phys_len = shpp->sh_phys_max_off - shpp->sh_pool_create_len;
 return ((log_off - shpp->sh_pool_create_len) % phys_len
     + shpp->sh_pool_create_len);
}
