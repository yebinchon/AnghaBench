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
typedef  int /*<<< orphan*/  HashmapBase ;

/* Variables and functions */
 unsigned int DIB_FREE ; 
 int /*<<< orphan*/  DIB_RAW_FREE ; 
 int /*<<< orphan*/  DIB_RAW_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(HashmapBase *h, unsigned idx, unsigned dib) {
        FUNC1(h)[idx] = dib != DIB_FREE ? FUNC0(dib, DIB_RAW_OVERFLOW) : DIB_RAW_FREE;
}