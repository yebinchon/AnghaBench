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
typedef  int /*<<< orphan*/  musicbrainz_recording_t ;
struct TYPE_3__ {int /*<<< orphan*/  obj; int /*<<< orphan*/  psz_mb_server; } ;
typedef  TYPE_1__ musicbrainz_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 

musicbrainz_recording_t *FUNC3(musicbrainz_config_t *cfg,
                                                                const char *psz_disc_id)
{
    char *psz_url = FUNC1(cfg->psz_mb_server, psz_disc_id, NULL);
    if(!psz_url)
        return NULL;

    musicbrainz_recording_t *r = FUNC2(cfg->obj, psz_url);
    FUNC0(psz_url);
    return r;
}