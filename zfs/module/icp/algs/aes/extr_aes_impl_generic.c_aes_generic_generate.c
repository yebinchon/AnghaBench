
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int * ks32; } ;
struct TYPE_5__ {int * ks32; } ;
struct TYPE_7__ {TYPE_2__ decr_ks; int nr; TYPE_1__ encr_ks; } ;
typedef TYPE_3__ aes_key_t ;


 int rijndael_key_setup_dec (int *,int const*,int) ;
 int rijndael_key_setup_enc (int *,int const*,int) ;

__attribute__((used)) static void
aes_generic_generate(aes_key_t *key, const uint32_t *keyarr32, int keybits)
{
 key->nr = rijndael_key_setup_enc(&(key->encr_ks.ks32[0]), keyarr32,
     keybits);
 key->nr = rijndael_key_setup_dec(&(key->decr_ks.ks32[0]), keyarr32,
     keybits);
}
