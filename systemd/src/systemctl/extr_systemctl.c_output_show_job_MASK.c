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
struct job_info {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FNM_NOESCAPE ; 
 int FUNC0 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct job_info *job, char **patterns) {
        return FUNC0(patterns, job->name, FNM_NOESCAPE);
}