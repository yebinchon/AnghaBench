
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * nvs_ops; } ;
typedef TYPE_1__ nvstream_t ;
typedef int nvs_header_t ;
typedef int nvlist_t ;
typedef int XDR ;


 int nvs_operation (TYPE_1__*,int *,size_t*) ;
 int nvs_xdr_create (TYPE_1__*,int *,char*,size_t) ;
 int nvs_xdr_destroy (TYPE_1__*) ;
 int nvs_xdr_ops ;

__attribute__((used)) static int
nvs_xdr(nvstream_t *nvs, nvlist_t *nvl, char *buf, size_t *buflen)
{
 XDR xdr;
 int err;

 nvs->nvs_ops = &nvs_xdr_ops;

 if ((err = nvs_xdr_create(nvs, &xdr, buf + sizeof (nvs_header_t),
     *buflen - sizeof (nvs_header_t))) != 0)
  return (err);

 err = nvs_operation(nvs, nvl, buflen);

 nvs_xdr_destroy(nvs);

 return (err);
}
