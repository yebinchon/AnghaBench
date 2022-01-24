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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ musicbrainz_lookup_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__* FUNC4 () ; 

__attribute__((used)) static musicbrainz_lookup_t * FUNC5(vlc_object_t *p_obj, const char *psz_url)
{
    FUNC3(p_obj, "Querying MB for %s", psz_url);
    void *p_buffer = FUNC2(p_obj, psz_url);
    if(!p_buffer)
        return NULL;

    musicbrainz_lookup_t *p_lookup = FUNC4();
    if(p_lookup)
    {
        p_lookup->root = FUNC1(p_obj, p_buffer);
        if (!p_lookup->root)
            FUNC3(p_obj, "No results");
    }
    FUNC0(p_buffer);
    return p_lookup;
}