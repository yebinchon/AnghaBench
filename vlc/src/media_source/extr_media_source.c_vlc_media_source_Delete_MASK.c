#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  tree; } ;
typedef  TYPE_1__ vlc_media_source_t ;
struct TYPE_9__ {int /*<<< orphan*/  sd; int /*<<< orphan*/  owner; } ;
typedef  TYPE_2__ media_source_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(vlc_media_source_t *ms)
{
    media_source_private_t *priv = FUNC1(ms);
    FUNC2(priv->owner, ms);
    FUNC4(priv->sd);
    FUNC3(ms->tree);
    FUNC0(priv);
}