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
struct ref_opt {char const* member_0; char const* member_1; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct ref_opt*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

enum status_code
FUNC2(const char *id, char *name, const char *remote_name, const char *head)
{
	struct ref_opt opt = { remote_name, head };

	return FUNC0(id, FUNC1(id), name, FUNC1(name), &opt);
}