
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMSG2 (int ,char*) ;
 int _ (int ) ;
 int bf_crypt_save () ;
 int crypt_busy ;
 int e_intern2 ;
 int * keys ;
 scalar_t__ saved_crypt_method ;
 int * saved_keys ;
 scalar_t__ use_crypt_method ;

void
crypt_push_state()
{
    if (crypt_busy == 1)
    {

 if (use_crypt_method == 0)
 {
     saved_keys[0] = keys[0];
     saved_keys[1] = keys[1];
     saved_keys[2] = keys[2];
 }
 else
     bf_crypt_save();
 saved_crypt_method = use_crypt_method;
    }
    else if (crypt_busy > 1)
 EMSG2(_(e_intern2), "crypt_push_state()");
    ++crypt_busy;
}
