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
typedef  int /*<<< orphan*/  vlc_meta_type_t ;
typedef  int /*<<< orphan*/  vlc_meta_t ;
typedef  int /*<<< orphan*/  MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int const**,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int,int const**,char const**) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const,char*) ; 

__attribute__((used)) static bool FUNC6( vlc_meta_t* p_meta, int i_type, char const* name, MP4_Box_t* p_box )
{
    vlc_meta_type_t const* type;
    char const* key;

    if( ( name != NULL && !FUNC0( name, &type, &key ) ) ||
        ( name == NULL && !FUNC1( i_type, &type, &key ) ) )
    {
        return false;
    }

    char* psz_utf = FUNC2( p_box );

    if( psz_utf )
    {
        if( type ) FUNC5( p_meta, *type, psz_utf );
        else       FUNC4( p_meta, key, psz_utf );

        FUNC3( psz_utf );
    }

    return true;
}