
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_3__ {int dde_key; } ;
typedef TYPE_1__ ddt_entry_t ;


 int DDT_KEY_WORDS ;
 int zap_prefetch_uint64 (int *,int ,int *,int ) ;

__attribute__((used)) static void
ddt_zap_prefetch(objset_t *os, uint64_t object, ddt_entry_t *dde)
{
 (void) zap_prefetch_uint64(os, object, (uint64_t *)&dde->dde_key,
     DDT_KEY_WORDS);
}
