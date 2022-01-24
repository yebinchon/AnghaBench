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
struct rule {char* codePrefix; char* code; int line; char* codeSuffix; } ;
struct lemon {int /*<<< orphan*/  outname; int /*<<< orphan*/  nolinenosflag; int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC2(
  FILE *out,
  struct rule *rp,
  struct lemon *lemp,
  int *lineno
){
 const char *cp;

 /* Setup code prior to the #line directive */
 if( rp->codePrefix && rp->codePrefix[0] ){
   FUNC0(out, "{%s", rp->codePrefix);
   for(cp=rp->codePrefix; *cp; cp++){ if( *cp=='\n' ) (*lineno)++; }
 }

 /* Generate code to do the reduce action */
 if( rp->code ){
   if( !lemp->nolinenosflag ){
     (*lineno)++;
     FUNC1(out,rp->line,lemp->filename);
   }
   FUNC0(out,"{%s",rp->code);
   for(cp=rp->code; *cp; cp++){ if( *cp=='\n' ) (*lineno)++; }
   FUNC0(out,"}\n"); (*lineno)++;
   if( !lemp->nolinenosflag ){
     (*lineno)++;
     FUNC1(out,*lineno,lemp->outname);
   }
 }

 /* Generate breakdown code that occurs after the #line directive */
 if( rp->codeSuffix && rp->codeSuffix[0] ){
   FUNC0(out, "%s", rp->codeSuffix);
   for(cp=rp->codeSuffix; *cp; cp++){ if( *cp=='\n' ) (*lineno)++; }
 }

 if( rp->codePrefix ){
   FUNC0(out, "}\n"); (*lineno)++;
 }

 return;
}