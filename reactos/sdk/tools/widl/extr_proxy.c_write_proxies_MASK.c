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
typedef  int /*<<< orphan*/  statement_list_t ;

/* Variables and functions */
 scalar_t__ do_everything ; 
 int /*<<< orphan*/  do_proxies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  proxy ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 

void FUNC4(const statement_list_t *stmts)
{
  if (!do_proxies) return;
  if (do_everything && !FUNC2(stmts)) return;

  FUNC1(stmts);
  if(!proxy) return;

  FUNC3( stmts );
  FUNC0(proxy);
}