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
struct redisMemOverhead {struct redisMemOverhead* db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct redisMemOverhead*) ; 

void FUNC1(struct redisMemOverhead *mh) {
    FUNC0(mh->db);
    FUNC0(mh);
}