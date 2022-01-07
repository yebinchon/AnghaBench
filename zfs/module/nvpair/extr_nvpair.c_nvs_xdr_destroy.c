
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nvs_op; scalar_t__ nvs_private; } ;
typedef TYPE_1__ nvstream_t ;
typedef int XDR ;




 int xdr_destroy (int *) ;

__attribute__((used)) static void
nvs_xdr_destroy(nvstream_t *nvs)
{
 switch (nvs->nvs_op) {
 case 128:
 case 129:
  xdr_destroy((XDR *)nvs->nvs_private);
  break;
 default:
  break;
 }
}
