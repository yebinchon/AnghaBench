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
struct redact_record {int dummy; } ;
typedef  int /*<<< orphan*/  bqueue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct redact_record* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct redact_record*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct redact_record*,struct redact_record*) ; 

__attribute__((used)) static struct redact_record *
FUNC4(bqueue_t *bq, struct redact_record *prev)
{
	struct redact_record *next = FUNC1(bq);
	FUNC0(FUNC3(prev, next));
	FUNC2(prev, sizeof (*prev));
	return (next);
}