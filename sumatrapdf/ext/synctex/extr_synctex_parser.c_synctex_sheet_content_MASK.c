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
typedef  TYPE_1__* synctex_scanner_t ;
typedef  int /*<<< orphan*/ * synctex_node_t ;
struct TYPE_3__ {int /*<<< orphan*/ * sheet; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

synctex_node_t FUNC3(synctex_scanner_t scanner,int page) {
	if (scanner) {
		synctex_node_t sheet = scanner->sheet;
		while(sheet) {
			if (page == FUNC1(sheet)) {
				return FUNC0(sheet);
			}
			sheet = FUNC2(sheet);
		}
	}
	return NULL;
}