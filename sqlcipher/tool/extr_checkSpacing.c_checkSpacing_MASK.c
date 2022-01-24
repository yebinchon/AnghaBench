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
typedef  int /*<<< orphan*/  zLine ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int CR_OK ; 
 unsigned int WSEOL_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 

__attribute__((used)) static void FUNC4(const char *zFile, unsigned flags){
  FILE *in = FUNC2(zFile, "rb");
  int i;
  int seenSpace;
  int seenTab;
  int ln = 0;
  int lastNonspace = 0;
  char zLine[2000];
  if( in==0 ){
    FUNC3("cannot open %s\n", zFile);
    return;
  }
  while( FUNC1(zLine, sizeof(zLine), in) ){
    seenSpace = 0;
    seenTab = 0;
    ln++;
    for(i=0; zLine[i]; i++){
      if( zLine[i]=='\t' && seenTab==0 ){
        FUNC3("%s:%d: tab (\\t) character\n", zFile, ln);
        seenTab = 1;
      }else if( zLine[i]=='\r' ){
        if( (flags & CR_OK)==0 ){
          FUNC3("%s:%d: carriage-return (\\r) character\n", zFile, ln);
        }
      }else if( zLine[i]==' ' ){
        seenSpace = 1;
      }else if( zLine[i]!='\n' ){
        lastNonspace = ln;
        seenSpace = 0;
      }
    }
    if( seenSpace && (flags & WSEOL_OK)==0 ){
      FUNC3("%s:%d: whitespace at end-of-line\n", zFile, ln);
    }
  }
  FUNC0(in);
  if( lastNonspace<ln ){
    FUNC3("%s:%d: blank lines at end of file (%d)\n",
        zFile, ln, ln - lastNonspace);
  }
}