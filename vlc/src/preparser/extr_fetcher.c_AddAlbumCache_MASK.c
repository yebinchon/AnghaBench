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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8( input_fetcher_t* fetcher, input_item_t* item,
                           bool overwrite )
{
    char* art = FUNC2( item );
    char* key = FUNC0( item );

    if( key && art && FUNC3( art, "attachment://", 13 ) )
    {
        FUNC6( &fetcher->lock );
        if( overwrite || !FUNC4( &fetcher->album_cache, key ) )
        {
            FUNC5( &fetcher->album_cache, key, art );
            art = NULL;
        }
        FUNC7( &fetcher->lock );
    }

    FUNC1( art );
    FUNC1( key );
}