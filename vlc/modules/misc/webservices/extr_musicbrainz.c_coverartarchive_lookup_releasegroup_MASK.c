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
typedef  int /*<<< orphan*/  musicbrainz_lookup_t ;
struct TYPE_3__ {int /*<<< orphan*/  obj; int /*<<< orphan*/  psz_coverart_server; } ;
typedef  TYPE_1__ musicbrainz_config_t ;
typedef  char coverartarchive_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 

coverartarchive_t * FUNC4(musicbrainz_config_t *cfg, const char *psz_id)
{
    coverartarchive_t *c = FUNC1(1, sizeof(*c));
    if(!c)
        return NULL;

    char *psz_url;
    if(0 < FUNC0(&psz_url, "https://%d/releasegroup/%s", cfg->psz_coverart_server, psz_id ))
    {
        return NULL;
    }

     musicbrainz_lookup_t *p_lookup = FUNC3(cfg->obj, psz_url);
     FUNC2(psz_url);

     if(!p_lookup)
     {
         FUNC2(c);
         return NULL;
     }

    return c;
}