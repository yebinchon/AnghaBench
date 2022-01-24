#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int mode; char* outname; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ BuildCtx ;

/* Variables and functions */
#define  BUILD_bcdef 138 
#define  BUILD_coffasm 137 
#define  BUILD_elfasm 136 
#define  BUILD_ffdef 135 
#define  BUILD_folddef 134 
#define  BUILD_libdef 133 
#define  BUILD_machasm 132 
#define  BUILD_peobj 131 
#define  BUILD_raw 130 
#define  BUILD_recdef 129 
#define  BUILD_vmdef 128 
 int LJ_32 ; 
 int LJ_64 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  _O_BINARY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,char**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC19 (int /*<<< orphan*/ ) ; 

int FUNC20(int argc, char **argv)
{
  BuildCtx ctx_;
  BuildCtx *ctx = &ctx_;
  int status, binmode;

  if (sizeof(void *) != 4*LJ_32+8*LJ_64) {
    FUNC17(stderr,"Error: pointer size mismatch in cross-build.\n");
    FUNC17(stderr,"Try: make HOST_CC=\"gcc -m32\" CROSS=...\n\n");
    return 1;
  }

  FUNC0(argc);
  FUNC18(ctx, argv);

  if ((status = FUNC3(ctx))) {
    FUNC17(stderr,"Error: DASM error %08x\n", status);
    return 1;
  }

  switch (ctx->mode) {
  case BUILD_peobj:
  case BUILD_raw:
    binmode = 1;
    break;
  default:
    binmode = 0;
    break;
  }

  if (ctx->outname[0] == '-' && ctx->outname[1] == '\0') {
    ctx->fp = stdout;
#if defined(_WIN32)
    if (binmode)
      _setmode(_fileno(stdout), _O_BINARY);  /* Yuck. */
#endif
  } else if (!(ctx->fp = FUNC16(ctx->outname, binmode ? "wb" : "w"))) {
    FUNC17(stderr, "Error: cannot open output file '%s': %s\n",
	    ctx->outname, FUNC19(errno));
    FUNC12(1);
  }

  switch (ctx->mode) {
  case BUILD_elfasm:
  case BUILD_coffasm:
  case BUILD_machasm:
    FUNC4(ctx);
    FUNC5(ctx);
    break;
  case BUILD_peobj:
    FUNC9(ctx);
    break;
  case BUILD_raw:
    FUNC10(ctx);
    break;
  case BUILD_bcdef:
    FUNC6(ctx);
    FUNC8(ctx);
    break;
  case BUILD_vmdef:
    FUNC11(ctx);
    FUNC8(ctx);
    FUNC17(ctx->fp, "}\n\n");
    break;
  case BUILD_ffdef:
  case BUILD_libdef:
  case BUILD_recdef:
    FUNC8(ctx);
    break;
  case BUILD_folddef:
    FUNC7(ctx);
    break;
  default:
    break;
  }

  FUNC15(ctx->fp);
  if (FUNC14(ctx->fp)) {
    FUNC17(stderr, "Error: cannot write to output file: %s\n",
	    FUNC19(errno));
    FUNC12(1);
  }
  FUNC13(ctx->fp);

  return 0;
}