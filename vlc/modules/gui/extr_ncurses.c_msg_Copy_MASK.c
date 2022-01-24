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
struct TYPE_4__ {int /*<<< orphan*/ * psz_header; int /*<<< orphan*/ * psz_module; int /*<<< orphan*/  psz_object_type; int /*<<< orphan*/  i_object_id; } ;
typedef  TYPE_1__ vlc_log_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static vlc_log_t *FUNC2 (const vlc_log_t *msg)
{
    vlc_log_t *copy = (vlc_log_t *)FUNC1 (sizeof (*copy));
    copy->i_object_id = msg->i_object_id;
    copy->psz_object_type = msg->psz_object_type;
    copy->psz_module = FUNC0 (msg->psz_module);
    copy->psz_header = msg->psz_header ? FUNC0 (msg->psz_header) : NULL;
    return copy;
}