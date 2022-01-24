#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_location ;
struct TYPE_9__ {int page_h; } ;
typedef  TYPE_1__ fz_html ;
typedef  int /*<<< orphan*/  fz_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_10__ {TYPE_3__* spine; } ;
typedef  TYPE_2__ epub_document ;
struct TYPE_11__ {scalar_t__* path; struct TYPE_11__* next; } ;
typedef  TYPE_3__ epub_chapter ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 float FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 char* FUNC4 (char const*,char) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,char const*,size_t) ; 

__attribute__((used)) static fz_location
FUNC7(fz_context *ctx, fz_document *doc_, const char *dest, float *xp, float *yp)
{
	epub_document *doc = (epub_document*)doc_;
	epub_chapter *ch;
	int i;

	const char *s = FUNC4(dest, '#');
	size_t n = s ? (size_t)(s - dest) : FUNC5(dest);
	if (s && s[1] == 0)
		s = NULL;

	for (i = 0, ch = doc->spine; ch; ++i, ch = ch->next)
	{
		if (!FUNC6(ch->path, dest, n) && ch->path[n] == 0)
		{
			if (s)
			{
				float y;
				fz_html *html = FUNC0(ctx, doc, ch);
				int ph = html->page_h;

				/* Search for a matching fragment */
				y = FUNC2(ctx, html, s+1);
				FUNC1(ctx, html);
				if (y >= 0)
				{
					int page = y / ph;
					if (yp) *yp = y - page * ph;
					return FUNC3(i, page);
				}
				return FUNC3(-1, -1);
			}
			return FUNC3(i, 0);
		}
	}

	return FUNC3(-1, -1);
}