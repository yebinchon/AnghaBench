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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *context, 
  int argc,  
  sqlite3_value **argv
){
  const void *p1, *p2;
  const char *zCmd;
  if( argc!=4 ) return;
  zCmd = (const char*)FUNC4(argv[1]);
  if( zCmd==0 ) return;
  if( FUNC6(zCmd,"text")==0 ){
    p1 = (const void*)FUNC4(argv[0]);
#ifndef SQLITE_OMIT_UTF16
  }else if( FUNC6(zCmd, "text16")==0 ){
    p1 = (const void*)FUNC5(argv[0]);
#endif
  }else if( FUNC6(zCmd, "blob")==0 ){
    p1 = (const void*)FUNC1(argv[0]);
  }else{
    return;
  }
  zCmd = (const char*)FUNC4(argv[2]);
  if( zCmd==0 ) return;
  if( FUNC6(zCmd,"bytes")==0 ){
    FUNC2(argv[0]);
#ifndef SQLITE_OMIT_UTF16
  }else if( FUNC6(zCmd, "bytes16")==0 ){
    FUNC3(argv[0]);
#endif
  }else if( FUNC6(zCmd, "noop")==0 ){
    /* do nothing */
  }else{
    return;
  }
  zCmd = (const char*)FUNC4(argv[3]);
  if( zCmd==0 ) return;
  if( FUNC6(zCmd,"text")==0 ){
    p2 = (const void*)FUNC4(argv[0]);
#ifndef SQLITE_OMIT_UTF16
  }else if( FUNC6(zCmd, "text16")==0 ){
    p2 = (const void*)FUNC5(argv[0]);
#endif
  }else if( FUNC6(zCmd, "blob")==0 ){
    p2 = (const void*)FUNC1(argv[0]);
  }else{
    return;
  }
  FUNC0(context, p1!=p2);
}