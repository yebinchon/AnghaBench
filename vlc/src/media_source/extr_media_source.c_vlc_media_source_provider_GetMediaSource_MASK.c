#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_media_source_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vlc_media_source_provider_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

vlc_media_source_t *
FUNC5(vlc_media_source_provider_t *provider,
                                         const char *name)
{
    FUNC3(&provider->lock);
    vlc_media_source_t *ms = FUNC2(provider, name);
    if (ms)
        FUNC0(ms);
    else
        ms = FUNC1(provider, name);
    FUNC4(&provider->lock);

    return ms;
}