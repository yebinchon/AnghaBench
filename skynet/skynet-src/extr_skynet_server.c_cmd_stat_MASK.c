#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct skynet_context {char* result; int endless; double message_count; scalar_t__ cpu_start; scalar_t__ profile; scalar_t__ cpu_cost; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,double) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static const char *
FUNC5(struct skynet_context * context, const char * param) {
	if (FUNC3(param, "mqlen") == 0) {
		int len = FUNC0(context->queue);
		FUNC2(context->result, "%d", len);
	} else if (FUNC3(param, "endless") == 0) {
		if (context->endless) {
			FUNC4(context->result, "1");
			context->endless = false;
		} else {
			FUNC4(context->result, "0");
		}
	} else if (FUNC3(param, "cpu") == 0) {
		double t = (double)context->cpu_cost / 1000000.0;	// microsec
		FUNC2(context->result, "%lf", t);
	} else if (FUNC3(param, "time") == 0) {
		if (context->profile) {
			uint64_t ti = FUNC1() - context->cpu_start;
			double t = (double)ti / 1000000.0;	// microsec
			FUNC2(context->result, "%lf", t);
		} else {
			FUNC4(context->result, "0");
		}
	} else if (FUNC3(param, "message") == 0) {
		FUNC2(context->result, "%d", context->message_count);
	} else {
		context->result[0] = '\0';
	}
	return context->result;
}