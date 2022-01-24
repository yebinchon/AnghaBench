#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/ * hashed_data; int /*<<< orphan*/ * hashed_data_len; } ;
struct TYPE_6__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_8__ {TYPE_2__ v4; TYPE_1__ v3; } ;
struct TYPE_9__ {int version; size_t type; size_t public_key_algo; size_t digest_algo; TYPE_3__ specific; } ;
typedef  TYPE_4__ signature_packet_t ;
typedef  size_t i_len ;
typedef  int /*<<< orphan*/  gcry_md_hd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint8_t *FUNC9( gcry_md_hd_t hd, signature_packet_t *p_sig )
{
    if( p_sig->version == 3 )
    {
        FUNC3( hd, p_sig->type );
        FUNC5( hd, &p_sig->specific.v3.timestamp, 4 );
    }
    else if( p_sig->version == 4 )
    {
        FUNC3( hd, p_sig->version );
        FUNC3( hd, p_sig->type );
        FUNC3( hd, p_sig->public_key_algo );
        FUNC3( hd, p_sig->digest_algo );
        FUNC5( hd, p_sig->specific.v4.hashed_data_len, 2 );
        size_t i_len = FUNC8( p_sig->specific.v4.hashed_data_len, 2 );
        FUNC5( hd, p_sig->specific.v4.hashed_data, i_len );

        FUNC3( hd, 0x04 );
        FUNC3( hd, 0xFF );

        i_len += 6; /* hashed data + 6 bytes header */

        FUNC3( hd, (i_len >> 24) & 0xff );
        FUNC3( hd, (i_len >> 16) & 0xff );
        FUNC3( hd, (i_len >> 8) & 0xff );
        FUNC3( hd, (i_len) & 0xff );
    }
    else
    {   /* RFC 4880 only tells about versions 3 and 4 */
        return NULL;
    }

    FUNC1( hd );

    uint8_t *p_tmp = (uint8_t*) FUNC4( hd, p_sig->digest_algo) ;
    unsigned int hash_len = FUNC2 (p_sig->digest_algo);
    uint8_t *p_hash = FUNC6(hash_len);
    if( p_hash )
        FUNC7(p_hash, p_tmp, hash_len);
    FUNC0( hd );
    return p_hash;
}