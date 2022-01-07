
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int crypto_provider_handle_t ;


 int CRYPTO_PROVIDER_READY ;

__attribute__((used)) static void
sha1_provider_status(crypto_provider_handle_t provider, uint_t *status)
{
 *status = CRYPTO_PROVIDER_READY;
}
