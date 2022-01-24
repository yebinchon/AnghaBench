#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
struct TYPE_3__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_4__ {TYPE_1__ mon; scalar_t__ fake_bgrel; int /*<<< orphan*/ * fake_bg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_FORMAT_ARGB32 ; 
 scalar_t__ CAIRO_STATUS_SUCCESS ; 
 TYPE_2__ CacheState ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char const* const,char*) ; 
 char* FUNC13 (char const* const) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 () ; 

__attribute__((used)) static void FUNC16 ( const char* const fake_background )
{
    if ( CacheState.fake_bg == NULL ) {
        cairo_surface_t *s = NULL;
        /**
         * Select Background to use for fake transparency.
         * Current options: 'real', 'screenshot','background'
         */
        FUNC0 ( "Fake start" );
        if ( FUNC12 ( fake_background, "real" ) == 0 ) {
            return;
        }
        else if ( FUNC12 ( fake_background, "screenshot" ) == 0 ) {
            s = FUNC15 ();
        }
        else if ( FUNC12 ( fake_background, "background" ) == 0 ) {
            s = FUNC14 ();
        }
        else {
            char *fpath = FUNC13 ( fake_background );
            FUNC10 ( "Opening %s to use as background.", fpath );
            s                     = FUNC4 ( fpath );
            CacheState.fake_bgrel = TRUE;
            FUNC11 ( fpath );
        }
        FUNC0 ( "Get surface." );
        if ( s != NULL ) {
            if ( FUNC9 ( s ) != CAIRO_STATUS_SUCCESS ) {
                FUNC10 ( "Failed to open surface fake background: %s",
                          FUNC7 ( FUNC9 ( s ) ) );
                FUNC8 ( s );
                s = NULL;
            }
            else {
                CacheState.fake_bg = FUNC3 ( CAIRO_FORMAT_ARGB32, CacheState.mon.w, CacheState.mon.h );
                cairo_t *dr = FUNC1 ( CacheState.fake_bg );
                if ( CacheState.fake_bgrel ) {
                    FUNC6 ( dr, s, 0, 0 );
                }
                else {
                    FUNC6 ( dr, s, -CacheState.mon.x, -CacheState.mon.y );
                }
                FUNC5 ( dr );
                FUNC2 ( dr );
                FUNC8 ( s );
            }
        }
        FUNC0 ( "Fake transparency" );
    }
}