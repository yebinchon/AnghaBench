#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_media_source_t ;
struct TYPE_5__ {int /*<<< orphan*/  media_sources; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vlc_media_source_provider_t ;
struct TYPE_6__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vlc_media_source_t *
FUNC5(vlc_media_source_provider_t *provider,
                              const char *name)
{
    FUNC4(&provider->lock);

    vlc_media_source_t *ms = FUNC3(provider, name);
    if (FUNC1(!ms))
        return NULL;

    FUNC2(&FUNC0(ms)->node, &provider->media_sources);
    return ms;
}