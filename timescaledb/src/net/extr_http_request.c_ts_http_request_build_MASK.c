#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {struct TYPE_20__* next; } ;
struct TYPE_19__ {int body_len; TYPE_3__* headers; } ;
struct TYPE_18__ {size_t len; char const* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ HttpRequest ;
typedef  TYPE_3__ HttpHeader ;

/* Variables and functions */
 int /*<<< orphan*/  CARRIAGE ; 
 int /*<<< orphan*/  NEW_LINE ; 
 int /*<<< orphan*/  SPACE ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

const char *
FUNC8(HttpRequest *req, size_t *buf_size)
{
	/* serialize into this buf, which is allocated on caller's memory context */
	StringInfoData buf;
	HttpHeader *cur_header;
	int content_length = 0;
	bool verified_content_length = false;

	FUNC7(&buf);

	FUNC4(req, &buf);
	FUNC3(SPACE, &buf);

	FUNC5(req, &buf);
	FUNC3(SPACE, &buf);

	FUNC6(req, &buf);
	FUNC3(CARRIAGE, &buf);
	FUNC3(NEW_LINE, &buf);

	cur_header = req->headers;

	while (cur_header != NULL)
	{
		content_length = FUNC0(cur_header);
		if (content_length != -1)
		{
			/* make sure it's equal to body_len */
			if (content_length != req->body_len)
			{
				return NULL;
			}
			else
				verified_content_length = true;
		}
		FUNC1(cur_header, &buf);
		FUNC3(CARRIAGE, &buf);
		FUNC3(NEW_LINE, &buf);

		cur_header = cur_header->next;
	}
	FUNC3(CARRIAGE, &buf);
	FUNC3(NEW_LINE, &buf);

	if (!verified_content_length)
	{
		/* Then there was no header field for Content-Length */
		if (req->body_len != 0)
		{
			return NULL;
		}
	}

	FUNC2(req, &buf);
	/* Now everything lives in buf.data */
	if (buf_size != NULL)
		*buf_size = buf.len;
	return buf.data;
}