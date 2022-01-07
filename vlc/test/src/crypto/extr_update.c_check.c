
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int digest_algo; int * issuer_longid; int const* hash_verification; } ;
typedef TYPE_1__ signature_packet_t ;
struct TYPE_10__ {char* psz_username; int* longid; int key; TYPE_1__ sig; } ;
typedef TYPE_2__ public_key_t ;


 int assert (int) ;
 int fprintf (int ,char*,char const*,char*,char*,int,int,int,int,int,int,int,int) ;
 char* gcry_md_algo_name (int ) ;
 int * hash_from_public_key (TYPE_2__*) ;
 int * hash_from_text (char const*,TYPE_1__*) ;
 scalar_t__ memcmp (int *,int const*,int) ;
 int stderr ;
 int verify_signature (TYPE_1__*,int *,int *) ;

__attribute__((used)) static void check(public_key_t *key, public_key_t *key2, const char *data,
    signature_packet_t *sig, const uint8_t *key_longid, const uint8_t *key_longid2)
{
    uint8_t *hash;
    const char *type;

    if (data) {
        hash = hash_from_text(data, sig);
        type = "text";
    } else {
        hash = hash_from_public_key(key);
        type = "public key";
    }

    assert(hash);


    assert(!memcmp(hash, sig->hash_verification, 2));

    if (memcmp(sig->issuer_longid, key_longid, 8)) {
        assert(key2 && key_longid2);
        check(key, ((void*)0), ((void*)0), &key->sig, key_longid, ((void*)0));
        key = key2;
    }

    assert(!verify_signature(sig, &key->key, hash));

    fprintf(stderr, "Good %s %s signature from %s (%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X)\n",
            type, gcry_md_algo_name(sig->digest_algo), key->psz_username,
            key->longid[0], key->longid[1], key->longid[2], key->longid[3],
            key->longid[4], key->longid[5], key->longid[6], key->longid[7]
            );
}
