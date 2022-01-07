
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong_t ;
typedef int uint_t ;
struct TYPE_3__ {int nvs_op; int * nvs_private; } ;
typedef TYPE_1__ nvstream_t ;
typedef int XDR ;


 int EFAULT ;
 int EINVAL ;



 int XDR_DECODE ;
 int XDR_ENCODE ;
 int xdrmem_create (int *,char*,int ,int ) ;

__attribute__((used)) static int
nvs_xdr_create(nvstream_t *nvs, XDR *xdr, char *buf, size_t buflen)
{

 if ((ulong_t)buf % 4 != 0)
  return (EFAULT);

 switch (nvs->nvs_op) {
 case 129:
  xdrmem_create(xdr, buf, (uint_t)buflen, XDR_ENCODE);
  nvs->nvs_private = xdr;
  return (0);
 case 130:
  xdrmem_create(xdr, buf, (uint_t)buflen, XDR_DECODE);
  nvs->nvs_private = xdr;
  return (0);
 case 128:
  nvs->nvs_private = ((void*)0);
  return (0);
 default:
  return (EINVAL);
 }
}
