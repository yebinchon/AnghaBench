#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  description; int /*<<< orphan*/  tree; } ;
typedef  TYPE_1__ vlc_media_source_t ;
typedef  int /*<<< orphan*/  vlc_media_source_provider_t ;
struct services_discovery_owner_t {TYPE_1__* sys; int /*<<< orphan*/ * cbs; } ;
struct TYPE_8__ {int /*<<< orphan*/ * owner; TYPE_3__* sd; int /*<<< orphan*/  name; TYPE_1__ public_data; int /*<<< orphan*/  rc; } ;
typedef  TYPE_2__ media_source_private_t ;
struct TYPE_9__ {int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  sd_cbs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,char const*,struct services_discovery_owner_t*) ; 

__attribute__((used)) static vlc_media_source_t *
FUNC9(vlc_media_source_provider_t *provider, const char *name)
{
    media_source_private_t *priv = FUNC1(sizeof(*priv) + FUNC3(name) + 1);
    if (FUNC4(!priv))
        return NULL;

    FUNC5(&priv->rc);

    vlc_media_source_t *ms = &priv->public_data;

    /* vlc_sd_Create() may call services_discovery_item_added(), which will read
     * its tree, so it must be initialized first */
    ms->tree = FUNC6();
    if (FUNC4(!ms->tree))
    {
        FUNC0(priv);
        return NULL;
    }

    FUNC2(priv->name, name);

    struct services_discovery_owner_t owner = {
        .cbs = &sd_cbs,
        .sys = ms,
    };

    priv->sd = FUNC8(provider, name, &owner);
    if (FUNC4(!priv->sd))
    {
        FUNC7(ms->tree);
        FUNC0(priv);
        return NULL;
    }

    /* sd->description is set during vlc_sd_Create() */
    ms->description = priv->sd->description;

    priv->owner = provider;

    return ms;
}