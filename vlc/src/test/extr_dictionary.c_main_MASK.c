#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_dictionary_t ;
typedef  int /*<<< orphan*/  our_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**,int const) ; 
 char** FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,void*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC11 (void)
{
    static const char * our_keys[] = {
        "Hello", "Hella", "flowmeter", "Frostnipped", "frostnipped", "remiform", "quadrifoliolate", "singularity", "unafflicted"
    };
    const int size = sizeof(our_keys)/sizeof(our_keys[0]);
    char ** keys;
    intptr_t i = 0;

    vlc_dictionary_t dict;
    FUNC6( &dict, 0 );

    FUNC0( FUNC9( &dict ) == 0 );
    FUNC0( FUNC8( &dict ) );

    keys = FUNC3( &dict );
    FUNC0( keys && !keys[0] );
    FUNC1(keys);


    /* Insert some values */
    for( i = 0; i < size; i++ )
    {
        FUNC7( &dict, our_keys[i], (void *)i );
        FUNC0( FUNC5(&dict, our_keys[i]) );
        for( int j = i + 1; j < size; j++ )
            FUNC0( !FUNC5(&dict, our_keys[j]) );
    }

    FUNC0( !FUNC8( &dict ) );
    FUNC2( &dict, our_keys, size );

    FUNC10( &dict, our_keys[size-1], NULL, NULL );

    FUNC2( &dict, our_keys, size-1 );

    FUNC4( &dict, NULL, NULL );

    FUNC0( FUNC9( &dict ) == 0 );
    FUNC0( FUNC8( &dict ) );
    return 0;
}