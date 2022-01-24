#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* zToken; } ;
struct TYPE_5__ {int flags; TYPE_1__ u; } ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 int EP_DblQuoted ; 
 int EP_Quoted ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

void FUNC3(Expr *p){
  FUNC0( FUNC2(p->u.zToken[0]) );
  p->flags |= p->u.zToken[0]=='"' ? EP_Quoted|EP_DblQuoted : EP_Quoted;
  FUNC1(p->u.zToken);
}