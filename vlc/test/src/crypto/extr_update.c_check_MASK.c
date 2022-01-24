#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/  digest_algo; int /*<<< orphan*/ * issuer_longid; int /*<<< orphan*/  const* hash_verification; } ;
typedef  TYPE_1__ signature_packet_t ;
struct TYPE_10__ {char* psz_username; int* longid; int /*<<< orphan*/  key; TYPE_1__ sig; } ;
typedef  TYPE_2__ public_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*,char*,int,int,int,int,int,int,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(public_key_t *key, public_key_t *key2, const char *data,
    signature_packet_t *sig, const uint8_t *key_longid, const uint8_t *key_longid2)
{
    uint8_t *hash;
    const char *type;

    if (data) {
        hash = FUNC4(data, sig);
        type = "text";
    } else {
        hash = FUNC3(key);
        type = "public key";
    }

    FUNC0(*hash);

    // TODO : binary file
    FUNC0(!FUNC5(hash, sig->hash_verification, 2));

    if (FUNC5(sig->issuer_longid, key_longid, 8)) {
        FUNC0(key2 && key_longid2);
        FUNC7(key, NULL, NULL, &key->sig, key_longid, NULL);
        key = key2;
    }

    FUNC0(!FUNC6(sig, &key->key, hash));

    FUNC1(stderr, "Good %s %s signature from %s (%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X)\n",
            type, FUNC2(sig->digest_algo), key->psz_username,
            key->longid[0], key->longid[1], key->longid[2], key->longid[3],
            key->longid[4], key->longid[5], key->longid[6], key->longid[7]
            );
}