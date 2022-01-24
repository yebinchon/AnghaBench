#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* html; } ;
typedef  TYPE_1__ html_document ;
typedef  int /*<<< orphan*/  fz_location ;
typedef  int /*<<< orphan*/  fz_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {float page_h; } ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static fz_location
FUNC3(fz_context *ctx, fz_document *doc_, const char *dest, float *xp, float *yp)
{
	html_document *doc = (html_document*)doc_;
	const char *s = FUNC2(dest, '#');
	if (s && s[1] != 0)
	{
		float y = FUNC0(ctx, doc->html, s+1);
		if (y >= 0)
		{
			int page = y / doc->html->page_h;
			if (yp) *yp = y - page * doc->html->page_h;
			return FUNC1(0, page);
		}
	}

	return FUNC1(-1, -1);
}