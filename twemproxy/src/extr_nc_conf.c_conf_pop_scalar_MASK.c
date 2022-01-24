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
struct string {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct conf {int /*<<< orphan*/  arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_VVERB ; 
 struct string* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct string*) ; 

__attribute__((used)) static void
FUNC3(struct conf *cf)
{
    struct string *value;

    value = FUNC0(&cf->arg);
    FUNC1(LOG_VVERB, "pop '%.*s'", value->len, value->data);
    FUNC2(value);
}