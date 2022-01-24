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
typedef  TYPE_1__* synctex_updater_t ;
struct TYPE_3__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYNCTEX_FILE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 

void FUNC2(synctex_updater_t updater, char * y_offset){
	if (NULL==updater) {
		return;
	}
	if (y_offset && FUNC1(y_offset)) {
		updater->length += FUNC0(SYNCTEX_FILE,"Y Offset:%s\n",y_offset);
	}
}