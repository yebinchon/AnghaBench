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
struct TYPE_4__ {int nVertex; int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ GeoPoly ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  GeoPoly *p = FUNC0(context, argv[0], 0);
  if( p ){
    FUNC2(context, p->hdr, 
       4+8*p->nVertex, SQLITE_TRANSIENT);
    FUNC1(p);
  }
}