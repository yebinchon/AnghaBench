
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int zap_destroy (int *,int ,int *) ;

__attribute__((used)) static int
ddt_zap_destroy(objset_t *os, uint64_t object, dmu_tx_t *tx)
{
 return (zap_destroy(os, object, tx));
}
