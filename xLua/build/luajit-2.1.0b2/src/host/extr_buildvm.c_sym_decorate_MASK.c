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
struct TYPE_3__ {scalar_t__ mode; } ;
typedef  TYPE_1__ BuildCtx ;

/* Variables and functions */
 scalar_t__ BUILD_coffasm ; 
 scalar_t__ BUILD_elfasm ; 
 scalar_t__ BUILD_machasm ; 
 scalar_t__ BUILD_peobj ; 
 int /*<<< orphan*/  LJ_64 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,char const*,char const*) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static const char *FUNC5(BuildCtx *ctx,
				const char *prefix, const char *suffix)
{
  char name[256];
  char *p;
#if LJ_64
  const char *symprefix = ctx->mode == BUILD_machasm ? "_" : "";
#elif LJ_TARGET_XBOX360
  const char *symprefix = "";
#else
  const char *symprefix = ctx->mode != BUILD_elfasm ? "_" : "";
#endif
  FUNC1(name, "%s%s%s", symprefix, prefix, suffix);
  p = FUNC2(name, '@');
  if (p) {
#if LJ_TARGET_X86ORX64
    if (!LJ_64 && (ctx->mode == BUILD_coffasm || ctx->mode == BUILD_peobj))
      name[0] = '@';
    else
      *p = '\0';
#elif LJ_TARGET_PPC && !LJ_TARGET_CONSOLE
    /* Keep @plt etc. */
#else
    *p = '\0';
#endif
  }
  p = (char *)FUNC0(FUNC4(name)+1);  /* MSVC doesn't like strdup. */
  FUNC3(p, name);
  return p;
}