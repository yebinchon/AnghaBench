#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_2__ vlc_media_tree_t ;
struct TYPE_19__ {TYPE_2__* tree; } ;
typedef  TYPE_3__ vlc_media_source_t ;
struct TYPE_17__ {TYPE_3__* sys; } ;
struct TYPE_20__ {TYPE_1__ owner; } ;
typedef  TYPE_4__ services_discovery_t ;
struct TYPE_21__ {char* psz_name; } ;
typedef  TYPE_5__ input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(services_discovery_t *sd,
                              input_item_t *parent, input_item_t *media,
                              const char *cat)
{
    FUNC1(!parent || !cat);
    FUNC0(cat);

    vlc_media_source_t *ms = sd->owner.sys;
    vlc_media_tree_t *tree = ms->tree;

    FUNC2(sd, "adding: %s", media->psz_name ? media->psz_name : "(null)");

    FUNC7(tree);

    input_item_node_t *parent_node;
    if (parent)
        FUNC6(tree, parent, &parent_node, NULL);
    else
        parent_node = &tree->root;

    bool added = FUNC5(tree, parent_node, media) != NULL;
    if (FUNC4(!added))
        FUNC3(sd, "could not allocate media tree node");

    FUNC8(tree);
}