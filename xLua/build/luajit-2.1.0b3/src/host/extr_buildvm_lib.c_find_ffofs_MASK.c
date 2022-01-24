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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int nglob; char** globnames; int code; scalar_t__* glob; } ;
typedef  TYPE_1__ BuildCtx ;

/* Variables and functions */
 char* LABEL_PREFIX_FF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int FUNC3(BuildCtx *ctx, const char *name)
{
  int i;
  for (i = 0; i < ctx->nglob; i++) {
    const char *gl = ctx->globnames[i];
    if (gl[0] == 'f' && gl[1] == 'f' && gl[2] == '_' && !FUNC2(gl+3, name)) {
      return (int)((uint8_t *)ctx->glob[i] - ctx->code);
    }
  }
  FUNC1(stderr, "Error: undefined fast function %s%s\n",
	  LABEL_PREFIX_FF, name);
  FUNC0(1);
}