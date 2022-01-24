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

/* Variables and functions */
 int SQLITE_ATTACH ; 
 int SQLITE_DENY ; 
 int SQLITE_DETACH ; 
 int SQLITE_OK ; 
 int SQLITE_PRAGMA ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC2(
  void *Notused,
  int eCode,
  const char *zArg1,
  const char *zArg2,
  const char *zArg3,
  const char *zArg4
){
  (void)Notused;
  (void)zArg2;
  (void)zArg3;
  (void)zArg4;
  if( eCode==SQLITE_PRAGMA ){
    if( FUNC1("vdbe_", zArg1, 5)==0
     || FUNC0("parser_trace", zArg1)==0
     || FUNC0("temp_store_directory", zArg1)==0
    ){
      return SQLITE_DENY;
    }
  }else if( (eCode==SQLITE_ATTACH || eCode==SQLITE_DETACH)
            && zArg1 && zArg1[0] ){
    return SQLITE_DENY;
  }
  return SQLITE_OK;
}