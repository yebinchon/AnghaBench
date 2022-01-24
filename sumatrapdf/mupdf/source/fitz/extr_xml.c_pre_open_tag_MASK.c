#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct parser {int /*<<< orphan*/  for_html; TYPE_1__* head; } ;
struct TYPE_4__ {struct TYPE_4__* up; } ;
typedef  TYPE_1__ fz_xml ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int CONTAINER ; 
 int FUNC0 (char*,int) ; 
 int fz_xml_html_tag__NONE ; 
 char* FUNC1 (TYPE_1__*) ; 
 TYPE_2__* html_tags ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct parser*,int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct parser*) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, struct parser *parser, char *mark, char *p)
{
	fz_xml *head = parser->head;
	int tag_num;

	if (!parser->for_html)
		return;

	tag_num = FUNC0(mark, p-mark);

	if (tag_num == fz_xml_html_tag__NONE)
		return;

	if ((html_tags[tag_num].flags & CONTAINER) == 0)
	{
		/* We aren't a container flag. This means that we should autoclose up to
		 * any matching tags in the same container. */
		fz_xml *which;
		for (which = head; which; which = which->up)
		{
			char *tag = FUNC1(which);
			int tag_num2 = tag ? FUNC0(tag, FUNC3(tag)) : fz_xml_html_tag__NONE;
			if (tag_num == tag_num2)
			{
				/* Autoclose everything from head to which inclusive */
				while (1)
				{
					int done = (head == which);
					FUNC4(ctx, parser);
					head = head->up;
					if (done)
						break;
				}
				break;
			}
			if (html_tags[tag_num2].flags & CONTAINER)
			{
				/* Stop searching */
				break;
			}
		}
	}

	/* Now, autoopen any tags implied by this one. */
	FUNC2(ctx, parser, tag_num);
}