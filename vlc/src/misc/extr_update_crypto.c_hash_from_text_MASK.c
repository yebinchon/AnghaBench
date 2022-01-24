#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  digest_algo; } ;
typedef  TYPE_1__ signature_packet_t ;
typedef  int /*<<< orphan*/  gcry_md_hd_t ;

/* Variables and functions */
 scalar_t__ TEXT_SIGNATURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 size_t FUNC4 (char const*,char*) ; 
 size_t FUNC5 (char const*) ; 

uint8_t *FUNC6( const char *psz_string,
        signature_packet_t *p_sig )
{
    gcry_md_hd_t hd;
    if( FUNC0( &hd, p_sig->digest_algo, 0 ) )
        return NULL;

    if( p_sig->type == TEXT_SIGNATURE )
    while( *psz_string )
    {
        size_t i_len = FUNC4( psz_string, "\r\n" );

        if( i_len )
        {
            FUNC2( hd, psz_string, i_len );
            psz_string += i_len;
        }
        FUNC1( hd, '\r' );
        FUNC1( hd, '\n' );

        if( *psz_string == '\r' )
            psz_string++;
        if( *psz_string == '\n' )
            psz_string++;
    }
    else
        FUNC2( hd, psz_string, FUNC5( psz_string ) );

    return FUNC3( hd, p_sig );
}