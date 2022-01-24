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
struct TYPE_5__ {size_t selection_end; char* text; int style; size_t selection_start; } ;
typedef  size_t INT ;
typedef  TYPE_1__ EDITSTATE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int ES_MULTILINE ; 
 int /*<<< orphan*/  FALSE ; 

__attribute__((used)) static void FUNC2(EDITSTATE *es, BOOL extend)
{
	INT e = es->selection_end;

	if (es->text[e]) {
		e++;
		if ((es->style & ES_MULTILINE) && (es->text[e - 1] == '\r')) {
			if (es->text[e] == '\n')
				e++;
			else if ((es->text[e] == '\r') && (es->text[e + 1] == '\n'))
				e += 2;
		}
	}
	FUNC1(es, extend ? es->selection_start : e, e, FALSE);
	FUNC0(es);
}