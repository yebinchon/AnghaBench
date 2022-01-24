#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  params ;
typedef  int /*<<< orphan*/  match ;
struct TYPE_7__ {int windowLog; int chainLog; int hashLog; int searchLog; int minMatch; int targetLength; int /*<<< orphan*/  strategy; } ;
struct TYPE_8__ {TYPE_1__ cParams; } ;
typedef  TYPE_2__ ZSTD_parameters ;
struct TYPE_9__ {char* member_0; int member_1; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_3__ ZSTD_outBuffer ;
typedef  int /*<<< orphan*/  ZSTD_CStream ;
typedef  int U64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  ZSTD_fast ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__,char*,size_t const) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 size_t const FUNC9 () ; 

int FUNC10(int argc, const char** argv)
{
  ZSTD_CStream* ctx;
  ZSTD_parameters params;
  size_t rc;
  unsigned windowLog;
  (void)argc;
  (void)argv;
  /* Create stream */
  ctx = FUNC1();
  if (!ctx) { return 1; }
  /* Set parameters */
  FUNC7(&params, 0, sizeof(params));
  params.cParams.windowLog = 18;
  params.cParams.chainLog = 13;
  params.cParams.hashLog = 14;
  params.cParams.searchLog = 1;
  params.cParams.minMatch = 7;
  params.cParams.targetLength = 16;
  params.cParams.strategy = ZSTD_fast;
  windowLog = params.cParams.windowLog;
  /* Initialize stream */
  rc = FUNC2(ctx, NULL, 0, params, 0);
  if (FUNC3(rc)) { return 2; }
  {
    U64 compressed = 0;
    const U64 toCompress = ((U64)1) << 33;
    const size_t size = 1 << windowLog;
    size_t pos = 0;
    char *srcBuffer = (char*) FUNC6(1 << windowLog);
    char *dstBuffer = (char*) FUNC6(FUNC0(1 << windowLog));
    ZSTD_outBuffer out = { dstBuffer, FUNC0(1 << windowLog), 0 };
    const char match[] = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    const size_t randomData = (1 << windowLog) - 2*sizeof(match);
    size_t i;
    FUNC8("\n ===   Long Match Test   === \n");
    FUNC8("Creating random data to produce long matches \n");
    for (i = 0; i < sizeof(match); ++i) {
      srcBuffer[i] = match[i];
    }
    for (i = 0; i < randomData; ++i) {
      srcBuffer[sizeof(match) + i] = (char)(FUNC9() & 0xFF);
    }
    for (i = 0; i < sizeof(match); ++i) {
      srcBuffer[sizeof(match) + randomData + i] = match[i];
    }
    FUNC8("Compressing, trying to generate a segfault \n");
    if (FUNC4(ctx, out, srcBuffer, size)) {
      return 1;
    }
    compressed += size;
    while (compressed < toCompress) {
      const size_t block = FUNC9() % (size - pos + 1);
      if (pos == size) { pos = 0; }
      if (FUNC4(ctx, out, srcBuffer + pos, block)) {
        return 1;
      }
      pos += block;
      compressed += block;
    }
    FUNC8("Compression completed successfully (no error triggered)\n");
    FUNC5(srcBuffer);
    FUNC5(dstBuffer);
  }
  return 0;
}