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
struct TYPE_4__ {struct TYPE_4__* alias; struct TYPE_4__* name; struct TYPE_4__* name_policy; struct TYPE_4__* mac; struct TYPE_4__* description; int /*<<< orphan*/  conditions; int /*<<< orphan*/  match_property; int /*<<< orphan*/  match_name; int /*<<< orphan*/  match_type; int /*<<< orphan*/  match_driver; int /*<<< orphan*/  match_path; int /*<<< orphan*/  match_mac; struct TYPE_4__* filename; } ;
typedef  TYPE_1__ link_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(link_config *link) {
        if (!link)
                return;

        FUNC1(link->filename);

        FUNC2(link->match_mac);
        FUNC3(link->match_path);
        FUNC3(link->match_driver);
        FUNC3(link->match_type);
        FUNC3(link->match_name);
        FUNC3(link->match_property);
        FUNC0(link->conditions);

        FUNC1(link->description);
        FUNC1(link->mac);
        FUNC1(link->name_policy);
        FUNC1(link->name);
        FUNC1(link->alias);

        FUNC1(link);
}