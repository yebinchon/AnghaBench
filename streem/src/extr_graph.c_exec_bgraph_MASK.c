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
struct bar_data {int tlen; void* title; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int strm_int ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGWINCH ; 
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  fin_bar ; 
 int FUNC0 (struct bar_data*) ; 
 int /*<<< orphan*/  interrupt ; 
 int /*<<< orphan*/  iter_bar ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int) ; 
 scalar_t__ refcnt ; 
 int /*<<< orphan*/  sigupdate ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  strm_consumer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,char**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  winch ; 

__attribute__((used)) static int
FUNC8(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct bar_data* d;
  char* title = NULL;
  strm_int tlen = 0;

  FUNC4(strm, argc, args, "|s", &title, &tlen);
  d = FUNC1(sizeof(struct bar_data));
  if (!d) return STRM_NG;
  d->title = FUNC1(tlen);
  FUNC2((void*)d->title, title, tlen);
  d->tlen = tlen;
  if (refcnt == 0) {
    FUNC3(refcnt);
    FUNC5(SIGWINCH, sigupdate, &winch);
    FUNC5(SIGINT, sigupdate, &interrupt);
  }
  if (FUNC0(d) == STRM_NG) return STRM_NG;
  *ret = FUNC7(FUNC6(strm_consumer, iter_bar,
                                           fin_bar, (void*)d));
  return STRM_OK;
}