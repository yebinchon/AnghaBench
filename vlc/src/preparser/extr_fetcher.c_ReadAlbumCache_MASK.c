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
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  album_cache; } ;
typedef  TYPE_1__ input_fetcher_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6( input_fetcher_t* fetcher, input_item_t* item )
{
    char* key = FUNC0( item );

    if( key == NULL )
        return VLC_EGENERIC;

    FUNC4( &fetcher->lock );
    char const* art = FUNC3( &fetcher->album_cache,
                                                    key );
    if( art )
        FUNC2( item, art );
    FUNC5( &fetcher->lock );

    FUNC1( key );
    return art ? VLC_SUCCESS : VLC_EGENERIC;
}