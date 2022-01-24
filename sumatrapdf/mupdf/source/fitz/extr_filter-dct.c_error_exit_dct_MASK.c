#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* j_common_ptr ;
struct TYPE_10__ {int /*<<< orphan*/ * ctx; } ;
typedef  TYPE_3__ fz_dctd ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_9__ {TYPE_1__* err; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* format_message ) (TYPE_2__*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int JMSG_LENGTH_MAX ; 
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 

__attribute__((used)) static void FUNC3(j_common_ptr cinfo)
{
	char msg[JMSG_LENGTH_MAX];
	fz_dctd *state = FUNC0(cinfo);
	fz_context *ctx = state->ctx;
	cinfo->err->format_message(cinfo, msg);
	FUNC1(ctx, FZ_ERROR_GENERIC, "jpeg error: %s", msg);
}