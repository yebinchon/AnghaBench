#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {int /*<<< orphan*/ * s; } ;
struct TYPE_12__ {TYPE_3__ rsa; } ;
struct TYPE_13__ {int /*<<< orphan*/  digest_algo; TYPE_4__ algo_specific; } ;
typedef  TYPE_5__ signature_packet_t ;
struct TYPE_9__ {int /*<<< orphan*/ * e; int /*<<< orphan*/ * n; } ;
struct TYPE_10__ {TYPE_1__ rsa; } ;
struct TYPE_14__ {TYPE_2__ sig; } ;
typedef  TYPE_6__ public_key_packet_t ;
typedef  int /*<<< orphan*/ * gcry_sexp_t ;
typedef  int /*<<< orphan*/ * gcry_mpi_t ;

/* Variables and functions */
 int /*<<< orphan*/  GCRYMPI_FMT_USG ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,size_t*,char const*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7( signature_packet_t *sign, public_key_packet_t *p_key,
                      uint8_t *p_hash )
{
    int ret = VLC_EGENERIC;
    /* the data to be verified (a hash) */
    const char *hash_sexp_s = "(data(flags raw)(value %m))";
    /* the public key */
    const char *key_sexp_s = "(public-key(rsa(n %m)(e %m)))";
    /* the signature */
    const char *sig_sexp_s = "(sig-val(rsa(s%m)))";

    size_t erroff;
    gcry_mpi_t n, e, s, hash;
    n = e = s = hash = NULL;
    gcry_sexp_t key_sexp, hash_sexp, sig_sexp;
    key_sexp = hash_sexp = sig_sexp = NULL;

    int i_n_len = FUNC5( p_key->sig.rsa.n );
    int i_e_len = FUNC5( p_key->sig.rsa.e );
    if( FUNC1( &n, GCRYMPI_FMT_USG, p_key->sig.rsa.n + 2, i_n_len, NULL ) ||
        FUNC1( &e, GCRYMPI_FMT_USG, p_key->sig.rsa.e + 2, i_e_len, NULL ) ||
        FUNC3( &key_sexp, &erroff, key_sexp_s, n, e ) )
        goto out;

    uint8_t *p_s = sign->algo_specific.rsa.s;
    int i_s_len = FUNC5( p_s );
    if( FUNC1( &s, GCRYMPI_FMT_USG, p_s + 2, i_s_len, NULL ) ||
        FUNC3( &sig_sexp, &erroff, sig_sexp_s, s ) )
        goto out;

    if( FUNC6 (&hash, i_n_len, p_hash, sign->digest_algo) ||
        FUNC3( &hash_sexp, &erroff, hash_sexp_s, hash ) )
        goto out;

    if( FUNC2( sig_sexp, hash_sexp, key_sexp ) )
        goto out;

    ret = VLC_SUCCESS;

out:
    if( n ) FUNC0( n );
    if( e ) FUNC0( e );
    if( s ) FUNC0( s );
    if( hash ) FUNC0( hash );
    if( key_sexp ) FUNC4( key_sexp );
    if( sig_sexp ) FUNC4( sig_sexp );
    if( hash_sexp ) FUNC4( hash_sexp );
    return ret;
}