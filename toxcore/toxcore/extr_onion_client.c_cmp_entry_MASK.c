#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  public_key; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_1__ Onion_Node ;

/* Variables and functions */
 int /*<<< orphan*/  ONION_NODE_TIMEOUT ; 
 int /*<<< orphan*/  cmp_public_key ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void const*,int) ; 

__attribute__((used)) static int FUNC3(const void *a, const void *b)
{
    Onion_Node entry1, entry2;
    FUNC2(&entry1, a, sizeof(Onion_Node));
    FUNC2(&entry2, b, sizeof(Onion_Node));
    int t1 = FUNC1(entry1.timestamp, ONION_NODE_TIMEOUT);
    int t2 = FUNC1(entry2.timestamp, ONION_NODE_TIMEOUT);

    if (t1 && t2)
        return 0;

    if (t1)
        return -1;

    if (t2)
        return 1;

    int close = FUNC0(cmp_public_key, entry1.public_key, entry2.public_key);

    if (close == 1)
        return 1;

    if (close == 2)
        return -1;

    return 0;
}