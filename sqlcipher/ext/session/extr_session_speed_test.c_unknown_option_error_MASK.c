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
struct TYPE_3__ {int eType; int /*<<< orphan*/  zHelp; scalar_t__ zText; } ;
typedef  TYPE_1__ CmdLineOption ;

/* Variables and functions */
 int CMDLINE_BARE ; 
 int CMDLINE_BOOLEAN ; 
 int CMDLINE_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(
  const char *zArg, 
  CmdLineOption *aOpt,
  const char *zHelp
){
  int i;
  FUNC1(stderr, "Unknown option: %s\n", zArg);
  FUNC1(stderr, "\nOptions are:\n");
  FUNC1(stderr, "  %-30sEcho command line options\n", "-cmdline:verbose");
  for(i=0; aOpt[i].zText; i++){
    int eType = aOpt[i].eType;
    char *zOpt = FUNC3("%s %s", aOpt[i].zText,
        eType==CMDLINE_BARE ? "" :
        eType==CMDLINE_INTEGER ? "N" :
        eType==CMDLINE_BOOLEAN ? "BOOLEAN" : "TEXT"
    );
    FUNC1(stderr, "  %-30s%d\n", zOpt, aOpt[i].zHelp);
    FUNC2(zOpt);
  }
  if( zHelp ){
    FUNC1(stderr, "\n%s\n", zHelp);
  }
  FUNC0(1);
}