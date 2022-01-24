#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct strm_lambda {int dummy; } ;
struct array_data {scalar_t__ n; int /*<<< orphan*/  arr; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_7__ {scalar_t__ mode; } ;
typedef  TYPE_1__ strm_stream ;
typedef  void* strm_cfunc ;

/* Variables and functions */
 int /*<<< orphan*/  STRM_IO_READ ; 
 int /*<<< orphan*/  STRM_IO_WRITE ; 
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  arr_exec ; 
 int /*<<< orphan*/  blk_exec ; 
 int /*<<< orphan*/ * cfunc_closer ; 
 int /*<<< orphan*/  cfunc_exec ; 
 struct array_data* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ strm_consumer ; 
 scalar_t__ strm_filter ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ strm_producer ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 struct strm_lambda* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ) ; 

int
FUNC15(strm_stream* strm, strm_value src, strm_value dst, strm_value* ret)
{
  /* src: io */
  if (FUNC3(src)) {
    src = FUNC10(FUNC4(src, STRM_IO_READ));
  }
  /* src: lambda */
  else if (FUNC5(src)) {
    struct strm_lambda* lmbd = FUNC13(src);
    src = FUNC10(FUNC8(strm_filter, blk_exec, NULL, (void*)lmbd));
  }
  /* src: array */
  else if (FUNC1(src)) {
    struct array_data *arrd = FUNC0(sizeof(struct array_data));
    arrd->arr = FUNC11(src);
    arrd->n = 0;
    src = FUNC10(FUNC8(strm_producer, arr_exec, NULL, (void*)arrd));
  }
  /* src: should be stream */

  /* dst: io */
  if (FUNC3(dst)) {
    dst = FUNC10(FUNC4(dst, STRM_IO_WRITE));
  }
  /* dst: lambda */
  else if (FUNC5(dst)) {
    struct strm_lambda* lmbd = FUNC13(dst);
    dst = FUNC10(FUNC8(strm_filter, blk_exec, NULL, (void*)lmbd));
  }
  /* dst: cfunc */
  else if (FUNC2(dst)) {
    strm_cfunc func = FUNC12(dst);
    dst = FUNC10(FUNC8(strm_filter, cfunc_exec, cfunc_closer, func));
  }

  /* stream x stream */
  if (FUNC9(src) && FUNC9(dst)) {
    strm_stream* lstrm = FUNC14(src);
    strm_stream* rstrm = FUNC14(dst);
    if (lstrm == NULL || rstrm == NULL ||
        lstrm->mode == strm_consumer ||
        rstrm->mode == strm_producer) {
      FUNC6(strm, "stream error");
      return STRM_NG;
    }
    FUNC7(FUNC14(src), FUNC14(dst));
    *ret = dst;
    return STRM_OK;
  }
  return STRM_NG;
}