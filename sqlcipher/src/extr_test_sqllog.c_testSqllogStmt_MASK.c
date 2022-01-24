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
struct SLConn {int /*<<< orphan*/  fd; } ;
struct TYPE_2__ {int /*<<< orphan*/  iClock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct SLConn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const**,int*) ; 
 TYPE_1__ sqllogglobal ; 

__attribute__((used)) static void FUNC4(struct SLConn *p, const char *zSql){
  const char *zFirst;             /* Pointer to first token in zSql */
  int nFirst;                     /* Size of token zFirst in bytes */

  FUNC3(zSql, &zFirst, &nFirst);
  if( nFirst!=6 || 0!=FUNC1("ATTACH", zFirst, 6) ){
    /* Not an ATTACH statement. Write this directly to the log. */
    FUNC0(p->fd, "%s; -- clock=%d\n", zSql, sqllogglobal.iClock++);
  }else{
    /* This is an ATTACH statement. Copy the database. */
    FUNC2(p, 0, 1);
  }
}