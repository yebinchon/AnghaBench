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
struct csv_data {char sep; scalar_t__ n; int /*<<< orphan*/  prev; int /*<<< orphan*/ * types; int /*<<< orphan*/  headers; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 struct csv_data* FUNC0 (int) ; 
 int /*<<< orphan*/  strm_ary_null ; 
 int /*<<< orphan*/  strm_filter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  strm_str_null ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sv_accept ; 
 int /*<<< orphan*/  sv_finish ; 

__attribute__((used)) static int
FUNC4(strm_stream* strm, int argc, strm_value* args, strm_value* ret, char sep)
{
  strm_stream *t;
  struct csv_data *cd;

  FUNC1(strm, argc, args, "");
  cd = FUNC0(sizeof(struct csv_data));
  if (!cd) return STRM_NG;
  cd->headers = strm_ary_null;
  cd->types = NULL;
  cd->prev = strm_str_null;
  cd->sep = sep;
  cd->n = 0;

  t = FUNC2(strm_filter, sv_accept, sv_finish, (void*)cd);
  *ret = FUNC3(t);
  return STRM_OK;
}