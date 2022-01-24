#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct security_info {int /*<<< orphan*/  system_call_filter; int /*<<< orphan*/  system_call_architectures; int /*<<< orphan*/  supplementary_groups; int /*<<< orphan*/  device_policy; int /*<<< orphan*/  notify_access; int /*<<< orphan*/  keyring_mode; int /*<<< orphan*/  root_image; int /*<<< orphan*/  root_directory; int /*<<< orphan*/  protect_system; int /*<<< orphan*/  protect_home; int /*<<< orphan*/  user; int /*<<< orphan*/  fragment_path; int /*<<< orphan*/  load_state; int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct security_info *i) {
        if (!i)
                return;

        FUNC0(i->id);
        FUNC0(i->type);
        FUNC0(i->load_state);
        FUNC0(i->fragment_path);

        FUNC0(i->user);

        FUNC0(i->protect_home);
        FUNC0(i->protect_system);

        FUNC0(i->root_directory);
        FUNC0(i->root_image);

        FUNC0(i->keyring_mode);
        FUNC0(i->notify_access);

        FUNC0(i->device_policy);

        FUNC2(i->supplementary_groups);
        FUNC2(i->system_call_architectures);

        FUNC1(i->system_call_filter);
}