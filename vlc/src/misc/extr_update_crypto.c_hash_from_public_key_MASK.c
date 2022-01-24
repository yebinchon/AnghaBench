#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_13__ {int version; scalar_t__ type; scalar_t__* hash_verification; int /*<<< orphan*/  digest_algo; } ;
struct TYPE_9__ {int /*<<< orphan*/  e; int /*<<< orphan*/  n; } ;
struct TYPE_8__ {int /*<<< orphan*/  y; int /*<<< orphan*/  g; int /*<<< orphan*/  q; int /*<<< orphan*/  p; } ;
struct TYPE_10__ {TYPE_2__ rsa; TYPE_1__ dsa; } ;
struct TYPE_11__ {scalar_t__ algo; size_t version; scalar_t__* timestamp; TYPE_3__ sig; } ;
struct TYPE_12__ {scalar_t__* psz_username; TYPE_7__ sig; TYPE_4__ key; } ;
typedef  TYPE_5__ public_key_t ;
typedef  size_t i_len ;
typedef  int /*<<< orphan*/  gcry_md_hd_t ;
typedef  scalar_t__ gcry_error_t ;

/* Variables and functions */
 scalar_t__ const GCRY_PK_DSA ; 
 scalar_t__ const GCRY_PK_RSA ; 
 scalar_t__ GENERIC_KEY_SIGNATURE ; 
 scalar_t__ POSITIVE_KEY_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,size_t) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char*) ; 

uint8_t *FUNC7( public_key_t *p_pkey )
{
    const uint8_t pk_algo = p_pkey->key.algo;
    size_t i_size;
    size_t i_p_len, i_g_len, i_q_len, i_y_len;
    size_t i_n_len, i_e_len;

    if( p_pkey->sig.version != 4 )
        return NULL;

    if( p_pkey->sig.type < GENERIC_KEY_SIGNATURE ||
        p_pkey->sig.type > POSITIVE_KEY_SIGNATURE )
        return NULL;

    if( p_pkey->psz_username == NULL )
        return NULL;

    gcry_error_t error = 0;
    gcry_md_hd_t hd;

    if (pk_algo == GCRY_PK_DSA) {
        i_p_len = FUNC5( p_pkey->key.sig.dsa.p );
        i_g_len = FUNC5( p_pkey->key.sig.dsa.g );
        i_q_len = FUNC5( p_pkey->key.sig.dsa.q );
        i_y_len = FUNC5( p_pkey->key.sig.dsa.y );

        i_size = 6 + 2*4 + i_p_len + i_g_len + i_q_len + i_y_len;
    } else if (pk_algo == GCRY_PK_RSA) {
        i_n_len = FUNC5( p_pkey->key.sig.rsa.n );
        i_e_len = FUNC5( p_pkey->key.sig.rsa.e );

        i_size = 6 + 2*2 + i_n_len + i_e_len;
    } else
        return NULL;

    error = FUNC1( &hd, p_pkey->sig.digest_algo, 0 );
    if( error )
        return NULL;

    FUNC2( hd, 0x99 );

    FUNC2( hd, (i_size >> 8) & 0xff );
    FUNC2( hd, i_size & 0xff );

    FUNC2( hd, p_pkey->key.version );
    FUNC3( hd, p_pkey->key.timestamp, 4 );
    FUNC2( hd, p_pkey->key.algo );

    if (pk_algo == GCRY_PK_DSA) {
        FUNC3( hd, (uint8_t*)&p_pkey->key.sig.dsa.p, 2 + i_p_len );
        FUNC3( hd, (uint8_t*)&p_pkey->key.sig.dsa.q, 2 + i_q_len );
        FUNC3( hd, (uint8_t*)&p_pkey->key.sig.dsa.g, 2 + i_g_len );
        FUNC3( hd, (uint8_t*)&p_pkey->key.sig.dsa.y, 2 + i_y_len );
    } else if (pk_algo == GCRY_PK_RSA) {
        FUNC3( hd, (uint8_t*)&p_pkey->key.sig.rsa.n, 2 + i_n_len );
        FUNC3( hd, (uint8_t*)&p_pkey->key.sig.rsa.e, 2 + i_e_len );
    }

    FUNC2( hd, 0xb4 );

    size_t i_len = FUNC6((char*)p_pkey->psz_username);

    FUNC2( hd, (i_len >> 24) & 0xff );
    FUNC2( hd, (i_len >> 16) & 0xff );
    FUNC2( hd, (i_len >> 8) & 0xff );
    FUNC2( hd, (i_len) & 0xff );

    FUNC3( hd, p_pkey->psz_username, i_len );

    uint8_t *p_hash = FUNC4( hd, &p_pkey->sig );
    if( !p_hash ||
        p_hash[0] != p_pkey->sig.hash_verification[0] ||
        p_hash[1] != p_pkey->sig.hash_verification[1] )
    {
        FUNC0(p_hash);
        return NULL;
    }

    return p_hash;
}