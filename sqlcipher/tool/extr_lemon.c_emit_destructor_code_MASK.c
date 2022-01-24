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
struct symbol {scalar_t__ type; char* destructor; int destLineno; int dtnum; } ;
struct lemon {char* tokendest; char* vardest; int /*<<< orphan*/  outname; int /*<<< orphan*/  nolinenosflag; int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ TERMINAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC4(
  FILE *out,
  struct symbol *sp,
  struct lemon *lemp,
  int *lineno
){
 char *cp = 0;

 if( sp->type==TERMINAL ){
   cp = lemp->tokendest;
   if( cp==0 ) return;
   FUNC1(out,"{\n"); (*lineno)++;
 }else if( sp->destructor ){
   cp = sp->destructor;
   FUNC1(out,"{\n"); (*lineno)++;
   if( !lemp->nolinenosflag ){
     (*lineno)++;
     FUNC3(out,sp->destLineno,lemp->filename);
   }
 }else if( lemp->vardest ){
   cp = lemp->vardest;
   if( cp==0 ) return;
   FUNC1(out,"{\n"); (*lineno)++;
 }else{
   FUNC0( 0 );  /* Cannot happen */
 }
 for(; *cp; cp++){
   if( *cp=='$' && cp[1]=='$' ){
     FUNC1(out,"(yypminor->yy%d)",sp->dtnum);
     cp++;
     continue;
   }
   if( *cp=='\n' ) (*lineno)++;
   FUNC2(*cp,out);
 }
 FUNC1(out,"\n"); (*lineno)++;
 if (!lemp->nolinenosflag) {
   (*lineno)++; FUNC3(out,*lineno,lemp->outname);
 }
 FUNC1(out,"}\n"); (*lineno)++;
 return;
}