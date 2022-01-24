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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int
FUNC1(libzfs_handle_t *hdl, const char *parent, uint64_t guid,
    boolean_t bookmark_ok, char *name)
{
	return (FUNC0(hdl, parent, guid, bookmark_ok, NULL,
	    -1, name));
}