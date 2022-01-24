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
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  vlc_usage ; 

__attribute__((used)) static void FUNC7 (vlc_object_t *p_this, char const *psz_help_name)
{
    FUNC1();

    if( psz_help_name && !FUNC6( psz_help_name, "help" ) )
    {
        FUNC5(FUNC3(vlc_usage), "vlc");
        FUNC2( p_this, "=core" );
        FUNC4();
    }
    else if( psz_help_name && !FUNC6( psz_help_name, "longhelp" ) )
    {
        FUNC5(FUNC3(vlc_usage), "vlc");
        FUNC2( p_this, NULL );
        FUNC4();
    }
    else if( psz_help_name && !FUNC6( psz_help_name, "full-help" ) )
    {
        FUNC5(FUNC3(vlc_usage), "vlc");
        FUNC2( p_this, NULL );
    }
    else if( psz_help_name )
    {
        FUNC2( p_this, psz_help_name );
    }

    FUNC0();
}