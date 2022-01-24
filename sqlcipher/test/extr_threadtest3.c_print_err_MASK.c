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
struct TYPE_3__ {scalar_t__ rc; char* zErr; int iLine; } ;
typedef  TYPE_1__ Error ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 scalar_t__ SQLITE_SCHEMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nGlobalErr ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__,char*,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC3(Error *p){
  if( p->rc!=SQLITE_OK ){
    int isWarn = 0;
    if( p->rc==SQLITE_SCHEMA ) isWarn = 1;
    if( FUNC2("* - no such table: *",p->zErr)==0 ) isWarn = 1;
    FUNC1("%s: (%d) \"%s\" at line %d\n", isWarn ? "Warning" : "Error",
            p->rc, p->zErr, p->iLine);
    if( !isWarn ) nGlobalErr++;
    FUNC0(stdout);
  }
}