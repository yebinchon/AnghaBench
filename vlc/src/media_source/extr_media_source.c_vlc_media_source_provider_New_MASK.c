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
struct TYPE_4__ {int /*<<< orphan*/  media_sources; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vlc_media_source_provider_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

vlc_media_source_provider_t *
FUNC4(vlc_object_t *parent)
{
    vlc_media_source_provider_t *provider =
            FUNC0(parent, sizeof(*provider), "media-source-provider");
    if (FUNC1(!provider))
        return NULL;

    FUNC3(&provider->lock);
    FUNC2(&provider->media_sources);
    return provider;
}