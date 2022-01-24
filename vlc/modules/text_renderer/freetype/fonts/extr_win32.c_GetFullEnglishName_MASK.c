#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wchar_t ;
typedef  int uint32_t ;
typedef  scalar_t__ WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  elfLogFont; } ;
typedef  int /*<<< orphan*/ * HFONT ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int FT_UInt ;
typedef  int /*<<< orphan*/  FT_Byte ;
typedef  TYPE_1__ ENUMLOGFONTEX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int,int,int,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int FUNC10 (int) ; 
 scalar_t__* FUNC11 (int,int) ; 

__attribute__((used)) static WCHAR *FUNC12( const ENUMLOGFONTEX *lpelfe )
{

    HFONT    hFont      = NULL;
    HDC      hDc        = NULL;
    FT_Byte *p_table    = NULL;
    WCHAR   *psz_result = NULL;

    hFont = FUNC1( &lpelfe->elfLogFont );

    if( !hFont )
        return NULL;

    hDc = FUNC0( NULL );

    if( !hDc )
    {
        FUNC3( hFont );
        return NULL;
    }

    HFONT hOriginalFont = ( HFONT ) FUNC6( hDc, hFont );

    const uint32_t i_name_tag = FUNC10( ( uint32_t ) 'n' << 24
                                      | ( uint32_t ) 'a' << 16
                                      | ( uint32_t ) 'm' << 8
                                      | ( uint32_t ) 'e' << 0 );

    int i_size = FUNC4( hDc, i_name_tag, 0, 0, 0 );

    if( i_size <= 0 )
        goto done;

    p_table = FUNC9( i_size );

    if( !p_table )
        goto done;

    if( FUNC4( hDc, i_name_tag, 0, p_table, i_size ) <= 0 )
        goto done;

    FT_Byte *p_name = NULL;
    FT_UInt  i_name_length = 0;

    /* FIXME: Try other combinations of platform/encoding/language IDs if necessary */
    if( FUNC5( p_table, i_size, 3, 1, 4, 0x409, &p_name, &i_name_length) )
        goto done;

    int i_length_in_wchars = i_name_length / 2;
    wchar_t *psz_name = FUNC11( i_length_in_wchars + 1, sizeof( *psz_name ) );

    if( !psz_name )
        goto done;

    for( int i = 0; i < i_length_in_wchars; ++i )
        psz_name[ i ] = FUNC7( p_name + i * 2 );
    psz_name[ i_length_in_wchars ] = 0;

    psz_result = psz_name;

done:
    FUNC8( p_table );
    FUNC6( hDc, hOriginalFont );
    FUNC3( hFont );
    FUNC2( hDc );

    return psz_result;
}