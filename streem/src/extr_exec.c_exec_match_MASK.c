#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strm_lambda {TYPE_1__* body; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ NODE_LAMBDA ; 
 int STRM_NG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct strm_lambda* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value func;

  if (argc < 2) {
      FUNC2(strm, "wrong number of arguments");
      return STRM_NG;
  }
  func = args[argc-1];
  if (FUNC1(func)) {
    struct strm_lambda* lambda = FUNC3(func);
    if (lambda->body->type == NODE_LAMBDA) {
      FUNC2(strm, "not a case function");
      return STRM_NG;
    }
  }
  return FUNC0(strm, func, argc-1, args, ret);
}