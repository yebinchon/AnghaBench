
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mod_hash_val_t ;
typedef int mod_hash_key_t ;
typedef size_t kcf_ops_class_t ;
struct TYPE_7__ {scalar_t__* me_name; int me_mechid; int me_mutex; } ;
typedef TYPE_1__ kcf_mech_entry_t ;
struct TYPE_12__ {void* me_threshold; int me_name; } ;
struct TYPE_11__ {void* me_threshold; int me_name; } ;
struct TYPE_10__ {void* me_threshold; int me_name; } ;
struct TYPE_9__ {int met_size; TYPE_1__* met_tab; } ;
struct TYPE_8__ {int me_name; } ;


 int CRYPTO_MAX_MECH_NAME ;
 size_t KCF_FIRST_OPSCLASS ;
 size_t KCF_LAST_OPSCLASS ;
 int KCF_MECHID (size_t,int) ;
 int MUTEX_DEFAULT ;
 int SUN_CKM_AES_CBC ;
 int SUN_CKM_AES_ECB ;
 int SUN_CKM_BLOWFISH_CBC ;
 int SUN_CKM_BLOWFISH_ECB ;
 int SUN_CKM_DES3_CBC ;
 int SUN_CKM_DES3_ECB ;
 int SUN_CKM_DES_CBC ;
 int SUN_CKM_DES_ECB ;
 int SUN_CKM_MD5 ;
 int SUN_CKM_MD5_HMAC ;
 int SUN_CKM_MD5_HMAC_GENERAL ;
 int SUN_CKM_RC4 ;
 int SUN_CKM_SHA1 ;
 int SUN_CKM_SHA1_HMAC ;
 int SUN_CKM_SHA1_HMAC_GENERAL ;
 int SUN_RANDOM ;
 void* kcf_aes_threshold ;
 void* kcf_bf_threshold ;
 TYPE_6__* kcf_cipher_mechs_tab ;
 void* kcf_des3_threshold ;
 void* kcf_des_threshold ;
 TYPE_5__* kcf_digest_mechs_tab ;
 TYPE_4__* kcf_mac_mechs_tab ;
 void* kcf_md5_threshold ;
 int kcf_mech_hash ;
 int kcf_mech_hash_size ;
 int kcf_mech_tabs_lock ;
 TYPE_3__* kcf_mech_tabs_tab ;
 TYPE_2__* kcf_misc_mechs_tab ;
 void* kcf_rc4_threshold ;
 void* kcf_sha1_threshold ;
 int mod_hash_create_strhash_nodtr (char*,int ,int ) ;
 int mod_hash_insert (int ,int ,int ) ;
 int mod_hash_null_valdtor ;
 int mutex_init (int *,int *,int ,int *) ;
 int strncpy (int ,int ,int ) ;

void
kcf_init_mech_tabs(void)
{
 int i, max;
 kcf_ops_class_t class;
 kcf_mech_entry_t *me_tab;



 mutex_init(&kcf_mech_tabs_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));




 (void) strncpy(kcf_digest_mechs_tab[0].me_name, SUN_CKM_MD5,
     CRYPTO_MAX_MECH_NAME);
 kcf_digest_mechs_tab[0].me_threshold = kcf_md5_threshold;

 (void) strncpy(kcf_digest_mechs_tab[1].me_name, SUN_CKM_SHA1,
     CRYPTO_MAX_MECH_NAME);
 kcf_digest_mechs_tab[1].me_threshold = kcf_sha1_threshold;


 (void) strncpy(kcf_cipher_mechs_tab[0].me_name, SUN_CKM_DES_CBC,
     CRYPTO_MAX_MECH_NAME);
 kcf_cipher_mechs_tab[0].me_threshold = kcf_des_threshold;

 (void) strncpy(kcf_cipher_mechs_tab[1].me_name, SUN_CKM_DES3_CBC,
     CRYPTO_MAX_MECH_NAME);
 kcf_cipher_mechs_tab[1].me_threshold = kcf_des3_threshold;

 (void) strncpy(kcf_cipher_mechs_tab[2].me_name, SUN_CKM_DES_ECB,
     CRYPTO_MAX_MECH_NAME);
 kcf_cipher_mechs_tab[2].me_threshold = kcf_des_threshold;

 (void) strncpy(kcf_cipher_mechs_tab[3].me_name, SUN_CKM_DES3_ECB,
     CRYPTO_MAX_MECH_NAME);
 kcf_cipher_mechs_tab[3].me_threshold = kcf_des3_threshold;

 (void) strncpy(kcf_cipher_mechs_tab[4].me_name, SUN_CKM_BLOWFISH_CBC,
     CRYPTO_MAX_MECH_NAME);
 kcf_cipher_mechs_tab[4].me_threshold = kcf_bf_threshold;

 (void) strncpy(kcf_cipher_mechs_tab[5].me_name, SUN_CKM_BLOWFISH_ECB,
     CRYPTO_MAX_MECH_NAME);
 kcf_cipher_mechs_tab[5].me_threshold = kcf_bf_threshold;

 (void) strncpy(kcf_cipher_mechs_tab[6].me_name, SUN_CKM_AES_CBC,
     CRYPTO_MAX_MECH_NAME);
 kcf_cipher_mechs_tab[6].me_threshold = kcf_aes_threshold;

 (void) strncpy(kcf_cipher_mechs_tab[7].me_name, SUN_CKM_AES_ECB,
     CRYPTO_MAX_MECH_NAME);
 kcf_cipher_mechs_tab[7].me_threshold = kcf_aes_threshold;

 (void) strncpy(kcf_cipher_mechs_tab[8].me_name, SUN_CKM_RC4,
     CRYPTO_MAX_MECH_NAME);
 kcf_cipher_mechs_tab[8].me_threshold = kcf_rc4_threshold;



 (void) strncpy(kcf_mac_mechs_tab[0].me_name, SUN_CKM_MD5_HMAC,
     CRYPTO_MAX_MECH_NAME);
 kcf_mac_mechs_tab[0].me_threshold = kcf_md5_threshold;

 (void) strncpy(kcf_mac_mechs_tab[1].me_name, SUN_CKM_MD5_HMAC_GENERAL,
     CRYPTO_MAX_MECH_NAME);
 kcf_mac_mechs_tab[1].me_threshold = kcf_md5_threshold;

 (void) strncpy(kcf_mac_mechs_tab[2].me_name, SUN_CKM_SHA1_HMAC,
     CRYPTO_MAX_MECH_NAME);
 kcf_mac_mechs_tab[2].me_threshold = kcf_sha1_threshold;

 (void) strncpy(kcf_mac_mechs_tab[3].me_name, SUN_CKM_SHA1_HMAC_GENERAL,
     CRYPTO_MAX_MECH_NAME);
 kcf_mac_mechs_tab[3].me_threshold = kcf_sha1_threshold;



 (void) strncpy(kcf_misc_mechs_tab[0].me_name, SUN_RANDOM,
     CRYPTO_MAX_MECH_NAME);

 kcf_mech_hash = mod_hash_create_strhash_nodtr("kcf mech2id hash",
     kcf_mech_hash_size, mod_hash_null_valdtor);

 for (class = KCF_FIRST_OPSCLASS; class <= KCF_LAST_OPSCLASS; class++) {
  max = kcf_mech_tabs_tab[class].met_size;
  me_tab = kcf_mech_tabs_tab[class].met_tab;
  for (i = 0; i < max; i++) {
   mutex_init(&(me_tab[i].me_mutex), ((void*)0),
       MUTEX_DEFAULT, ((void*)0));
   if (me_tab[i].me_name[0] != 0) {
    me_tab[i].me_mechid = KCF_MECHID(class, i);
    (void) mod_hash_insert(kcf_mech_hash,
        (mod_hash_key_t)me_tab[i].me_name,
        (mod_hash_val_t)&(me_tab[i].me_mechid));
   }
  }
 }
}
