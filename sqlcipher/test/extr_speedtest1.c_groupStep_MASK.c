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
struct groupConcat {scalar_t__ nUsed; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 scalar_t__ SQLITE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct groupConcat*,char const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *zVal;
  struct groupConcat *p;
  const char *zSep;
  int nVal, nSep;
  FUNC0( argc==1 || argc==2 );
  if( FUNC5(argv[0])==SQLITE_NULL ) return;
  p= (struct groupConcat*)FUNC2(context, sizeof(*p));

  if( p ){
    int firstTerm = p->nUsed==0;
    if( !firstTerm ){
      if( argc==2 ){
        zSep = (char*)FUNC4(argv[1]);
        nSep = FUNC3(argv[1]);
      }else{
        zSep = ",";
        nSep = 1;
      }
      if( nSep ) FUNC1(p, zSep, nSep);
    }
    zVal = (char*)FUNC4(argv[0]);
    nVal = FUNC3(argv[0]);
    if( zVal ) FUNC1(p, zVal, nVal);
  }
}