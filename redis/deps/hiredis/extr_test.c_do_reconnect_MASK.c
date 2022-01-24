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
struct config {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  redisContext ;

/* Variables and functions */
 scalar_t__ CONN_SSL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct config) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(redisContext *c, struct config config) {
    FUNC1(c);

    if (config.type == CONN_SSL) {
        FUNC0(c, config);
    }
}