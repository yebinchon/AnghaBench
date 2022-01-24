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
typedef  int /*<<< orphan*/  CmdLineOption ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(CmdLineOption *pOpt, const char *zArg){
  if( 0==FUNC1(zArg, "true") ) return 1;
  if( 0==FUNC1(zArg, "1") ) return 1;
  if( 0==FUNC1(zArg, "0") ) return 0;
  if( 0==FUNC1(zArg, "false") ) return 0;
  FUNC0(pOpt);
  return 0;
}