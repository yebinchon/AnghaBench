#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* synctex_scanner_t ;
struct TYPE_5__ {struct TYPE_5__* lists_of_friends; struct TYPE_5__* synctex; struct TYPE_5__* output; struct TYPE_5__* output_fmt; int /*<<< orphan*/  input; int /*<<< orphan*/  sheet; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SYNCTEX_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* SYNCTEX_START ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(synctex_scanner_t scanner) {
	if (NULL == scanner) {
		return;
	}
	if (SYNCTEX_FILE) {
		FUNC2(SYNCTEX_FILE);
		SYNCTEX_FILE = NULL;
	}
	FUNC0(scanner->sheet);
	FUNC0(scanner->input);
	FUNC1(SYNCTEX_START);
	FUNC1(scanner->output_fmt);
	FUNC1(scanner->output);
	FUNC1(scanner->synctex);
	FUNC1(scanner->lists_of_friends);
	FUNC1(scanner);
}