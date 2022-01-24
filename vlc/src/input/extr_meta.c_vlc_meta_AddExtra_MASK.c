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
struct TYPE_3__ {int /*<<< orphan*/  extra_tags; } ;
typedef  TYPE_1__ vlc_meta_t ;

/* Variables and functions */
 char* kVLCDictionaryNotFound ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  vlc_meta_FreeExtraKey ; 

void FUNC4( vlc_meta_t *m, const char *psz_name, const char *psz_value )
{
    char *psz_oldvalue = (char *)FUNC3( &m->extra_tags, psz_name );
    if( psz_oldvalue != kVLCDictionaryNotFound )
        FUNC2( &m->extra_tags, psz_name,
                                            vlc_meta_FreeExtraKey, NULL );
    FUNC1( &m->extra_tags, psz_name, FUNC0(psz_value) );
}