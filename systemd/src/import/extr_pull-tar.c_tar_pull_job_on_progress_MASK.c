#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* userdata; } ;
typedef  TYPE_1__ TarPull ;
typedef  TYPE_1__ PullJob ;

/* Variables and functions */
 int /*<<< orphan*/  TAR_DOWNLOADING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(PullJob *j) {
        TarPull *i;

        FUNC0(j);
        FUNC0(j->userdata);

        i = j->userdata;

        FUNC1(i, TAR_DOWNLOADING);
}