#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_2__ {int /*<<< orphan*/ * bulkhdr; } ;

/* Variables and functions */
 size_t OBJ_SHARED_BULKHDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,char) ; 
 TYPE_1__ shared ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(client *c, robj *obj) {
    size_t len = FUNC2(obj);

    if (len < OBJ_SHARED_BULKHDR_LEN)
        FUNC0(c,shared.bulkhdr[len]);
    else
        FUNC1(c,len,'$');
}