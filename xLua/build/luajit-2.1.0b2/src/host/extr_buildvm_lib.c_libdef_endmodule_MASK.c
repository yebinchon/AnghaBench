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
typedef  int uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ BuildCtx ;

/* Variables and functions */
 char* LABEL_PREFIX_LIBINIT ; 
 int /*<<< orphan*/  LIBINIT_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  modname ; 
 int modstate ; 
 int* obuf ; 
 int const* optr ; 
 scalar_t__ FUNC1 (char*,char*,int const) ; 

__attribute__((used)) static void FUNC2(BuildCtx *ctx)
{
  if (modstate != 0) {
    char line[80];
    const uint8_t *p;
    int n;
    if (modstate == 1)
      FUNC0(ctx->fp, "  (lua_CFunction)0");
    FUNC0(ctx->fp, "\n};\n");
    FUNC0(ctx->fp, "static const uint8_t %s%d[] = {\n",
	    LABEL_PREFIX_LIBINIT, modname);
    line[0] = '\0';
    for (n = 0, p = obuf; p < optr; p++) {
      n += FUNC1(line+n, "%d,", *p);
      if (n >= 75) {
	FUNC0(ctx->fp, "%s\n", line);
	n = 0;
	line[0] = '\0';
      }
    }
    FUNC0(ctx->fp, "%s%d\n};\n#endif\n\n", line, LIBINIT_END);
  }
}