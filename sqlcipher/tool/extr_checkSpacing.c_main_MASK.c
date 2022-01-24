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
 unsigned int CR_OK ; 
 unsigned int WSEOL_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

int FUNC3(int argc, char **argv){
  int i;
  unsigned flags = WSEOL_OK;
  for(i=1; i<argc; i++){
    const char *z = argv[i];
    if( z[0]=='-' ){
      while( z[0]=='-' ) z++;
      if( FUNC2(z,"crok")==0 ){
        flags |= CR_OK;
      }else if( FUNC2(z, "wseol")==0 ){
        flags &= ~WSEOL_OK;
      }else if( FUNC2(z, "help")==0 ){
        FUNC1("Usage: %s [options] FILE ...\n", argv[0]);
        FUNC1("  --crok      Do not report on carriage-returns\n");
        FUNC1("  --wseol     Complain about whitespace at end-of-line\n");
        FUNC1("  --help      This message\n");
      }else{
        FUNC1("unknown command-line option: [%s]\n", argv[i]);
        FUNC1("use --help for additional information\n");
      }
    }else{
      FUNC0(argv[i], flags);
    }
  }
  return 0;
}