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
struct view {int dummy; } ;
struct commit {scalar_t__* id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_MAIN_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (struct view*,int /*<<< orphan*/ ,struct commit*,char*,int) ; 

__attribute__((used)) static inline void
FUNC1(struct view *view, struct commit *commit)
{
	if (*commit->id)
		FUNC0(view, LINE_MAIN_COMMIT, commit, "", false);
}