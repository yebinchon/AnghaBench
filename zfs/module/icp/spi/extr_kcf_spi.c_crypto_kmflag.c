
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_req_handle_t ;


 int REQHNDL2_KMFLAG (int ) ;

int
crypto_kmflag(crypto_req_handle_t handle)
{
 return (REQHNDL2_KMFLAG(handle));
}
