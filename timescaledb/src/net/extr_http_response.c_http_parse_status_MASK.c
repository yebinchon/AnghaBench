#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t parse_offset; void* state; int /*<<< orphan*/  status_code; int /*<<< orphan*/  version; int /*<<< orphan*/  raw_buffer; } ;
typedef  TYPE_1__ HttpResponseState ;

/* Variables and functions */
#define  CARRIAGE_RETURN 129 
 void* HTTP_STATE_ERROR ; 
 void* HTTP_STATE_INTERM ; 
#define  NEW_LINE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char,int) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(HttpResponseState *state, const char next)
{
	char *raw_buf = FUNC3(state->parse_offset + 1);

	switch (next)
	{
		case CARRIAGE_RETURN:

			/*
			 * Then we are at the end of status and can use sscanf
			 *
			 * Need a second %s inside the sscanf so that we make sure to get
			 * all of the digits of the status code
			 */
			FUNC1(raw_buf, state->raw_buffer, state->parse_offset);
			raw_buf[state->parse_offset] = '\0';
			state->state = HTTP_STATE_ERROR;
			FUNC2(state->version, '\0', sizeof(state->version));

			if (FUNC5(raw_buf, "%127s%*[ ]%d%*[ ]%*s", state->version, &state->status_code) == 2)
			{
				if (FUNC0(state))
					state->state = HTTP_STATE_INTERM;
				else
					state->state = HTTP_STATE_ERROR;
			}
			break;
		case NEW_LINE:
			state->state = HTTP_STATE_ERROR;
			break;
		default:
			/* Don't try to parse Status line until we see '\r' */
			break;
	}

	FUNC4(raw_buf);
}