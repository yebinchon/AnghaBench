#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_4__ {double iJD; } ;
typedef  TYPE_1__ DateTime ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 

__attribute__((used)) static void FUNC3(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  DateTime x;
  if( FUNC1(context, argc, argv, &x)==0 ){
    FUNC0(&x);
    FUNC2(context, x.iJD/86400000.0);
  }
}