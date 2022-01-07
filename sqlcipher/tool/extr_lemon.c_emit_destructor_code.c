
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {scalar_t__ type; char* destructor; int destLineno; int dtnum; } ;
struct lemon {char* tokendest; char* vardest; int outname; int nolinenosflag; int filename; } ;
typedef int FILE ;


 scalar_t__ TERMINAL ;
 int assert (int ) ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;
 int tplt_linedir (int *,int,int ) ;

void emit_destructor_code(
  FILE *out,
  struct symbol *sp,
  struct lemon *lemp,
  int *lineno
){
 char *cp = 0;

 if( sp->type==TERMINAL ){
   cp = lemp->tokendest;
   if( cp==0 ) return;
   fprintf(out,"{\n"); (*lineno)++;
 }else if( sp->destructor ){
   cp = sp->destructor;
   fprintf(out,"{\n"); (*lineno)++;
   if( !lemp->nolinenosflag ){
     (*lineno)++;
     tplt_linedir(out,sp->destLineno,lemp->filename);
   }
 }else if( lemp->vardest ){
   cp = lemp->vardest;
   if( cp==0 ) return;
   fprintf(out,"{\n"); (*lineno)++;
 }else{
   assert( 0 );
 }
 for(; *cp; cp++){
   if( *cp=='$' && cp[1]=='$' ){
     fprintf(out,"(yypminor->yy%d)",sp->dtnum);
     cp++;
     continue;
   }
   if( *cp=='\n' ) (*lineno)++;
   fputc(*cp,out);
 }
 fprintf(out,"\n"); (*lineno)++;
 if (!lemp->nolinenosflag) {
   (*lineno)++; tplt_linedir(out,*lineno,lemp->outname);
 }
 fprintf(out,"}\n"); (*lineno)++;
 return;
}
