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
typedef  scalar_t__ synctex_node_t ;
struct TYPE_3__ {char* output; char* output_fmt; int version; int pre_unit; int pre_x_offset; int pre_y_offset; int count; double unit; double x_offset; double y_offset; int number_of_lists; scalar_t__* lists_of_friends; int /*<<< orphan*/  sheet; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (scalar_t__) ; 

void FUNC6(synctex_scanner_t scanner) {
	if (NULL == scanner) {
		return;
	}
	FUNC4("The scanner:\noutput:%s\noutput_fmt:%s\nversion:%i\n",scanner->output,scanner->output_fmt,scanner->version);
	FUNC4("pre_unit:%i\nx_offset:%i\ny_offset:%i\n",scanner->pre_unit,scanner->pre_x_offset,scanner->pre_y_offset);
	FUNC4("count:%i\npost_magnification:%f\npost_x_offset:%f\npost_y_offset:%f\n",
		scanner->count,scanner->unit,scanner->x_offset,scanner->y_offset);
	FUNC4("The input:\n");
	FUNC0(scanner->input);
	if (scanner->count<1000) {
		FUNC4("The sheets:\n");
		FUNC0(scanner->sheet);
		FUNC4("The friends:\n");
		if (scanner->lists_of_friends) {
			int i = scanner->number_of_lists;
			synctex_node_t node;
			while(i--) {
				FUNC4("Friend index:%i\n",i);
				node = (scanner->lists_of_friends)[i];
				while(node) {
					FUNC4("%s:%i,%i\n",
						FUNC5(node),
						FUNC3(node),
						FUNC2(node)
					);
					node = FUNC1(node);
				}
			}
		}
	} else {
		FUNC4("SyncTeX Warning: Too many objects\n");
	}
}