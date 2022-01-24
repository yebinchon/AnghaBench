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
struct ref {int dummy; } ;
struct line {int dummy; } ;
struct commit {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 struct ref* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct line const*) ; 
 int /*<<< orphan*/  FUNC2 (struct line const*) ; 

__attribute__((used)) static inline const struct ref *
FUNC3(const struct line *line, struct commit *commit)
{
	const struct ref *refs = NULL;

	if (FUNC1(line) && !(refs = FUNC0(commit->id)))
		FUNC2(line);

	return refs;
}