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
struct record_packet {int /*<<< orphan*/  packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct record_packet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct record_packet *rec) {
    FUNC1(&rec->packet);
    FUNC0(rec);
}