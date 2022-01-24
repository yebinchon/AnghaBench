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
struct lemon {char* tokenprefix; int nterminal; TYPE_1__** symbols; } ;
struct TYPE_2__ {int name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int LINESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct lemon*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,int,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

void FUNC7(struct lemon *lemp)
{
  FILE *out, *in;
  const char *prefix;
  char line[LINESIZE];
  char pattern[LINESIZE];
  int i;

  if( lemp->tokenprefix ) prefix = lemp->tokenprefix;
  else                    prefix = "";
  in = FUNC3(lemp,".h","rb");
  if( in ){
    int nextChar;
    for(i=1; i<lemp->nterminal && FUNC2(line,LINESIZE,in); i++){
      FUNC5(pattern,"#define %s%-30s %3d\n",
                    prefix,lemp->symbols[i]->name,i);
      if( FUNC6(line,pattern) ) break;
    }
    nextChar = FUNC1(in);
    FUNC0(in);
    if( i==lemp->nterminal && nextChar==EOF ){
      /* No change in the file.  Don't rewrite it. */
      return;
    }
  }
  out = FUNC3(lemp,".h","wb");
  if( out ){
    for(i=1; i<lemp->nterminal; i++){
      FUNC4(out,"#define %s%-30s %3d\n",prefix,lemp->symbols[i]->name,i);
    }
    FUNC0(out);
  }
  return;
}