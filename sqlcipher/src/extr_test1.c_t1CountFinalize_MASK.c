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
struct TYPE_3__ {int n; } ;
typedef  TYPE_1__ t1CountCtx ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(sqlite3_context *context){
  t1CountCtx *p;
  p = FUNC0(context, sizeof(*p));
  if( p ){
    if( p->n==42 ){
      FUNC1(context, "x_count totals to 42", -1);
    }else{
      FUNC2(context, p ? p->n : 0);
    }
  }
}