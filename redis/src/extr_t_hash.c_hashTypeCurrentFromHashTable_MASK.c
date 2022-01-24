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
typedef  int /*<<< orphan*/  sds ;
struct TYPE_3__ {scalar_t__ encoding; int /*<<< orphan*/  de; } ;
typedef  TYPE_1__ hashTypeIterator ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_HT ; 
 int OBJ_HASH_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

sds FUNC3(hashTypeIterator *hi, int what) {
    FUNC2(hi->encoding == OBJ_ENCODING_HT);

    if (what & OBJ_HASH_KEY) {
        return FUNC0(hi->de);
    } else {
        return FUNC1(hi->de);
    }
}