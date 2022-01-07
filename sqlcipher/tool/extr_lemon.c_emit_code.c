
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rule {char* codePrefix; char* code; int line; char* codeSuffix; } ;
struct lemon {int outname; int nolinenosflag; int filename; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int tplt_linedir (int *,int,int ) ;

void emit_code(
  FILE *out,
  struct rule *rp,
  struct lemon *lemp,
  int *lineno
){
 const char *cp;


 if( rp->codePrefix && rp->codePrefix[0] ){
   fprintf(out, "{%s", rp->codePrefix);
   for(cp=rp->codePrefix; *cp; cp++){ if( *cp=='\n' ) (*lineno)++; }
 }


 if( rp->code ){
   if( !lemp->nolinenosflag ){
     (*lineno)++;
     tplt_linedir(out,rp->line,lemp->filename);
   }
   fprintf(out,"{%s",rp->code);
   for(cp=rp->code; *cp; cp++){ if( *cp=='\n' ) (*lineno)++; }
   fprintf(out,"}\n"); (*lineno)++;
   if( !lemp->nolinenosflag ){
     (*lineno)++;
     tplt_linedir(out,*lineno,lemp->outname);
   }
 }


 if( rp->codeSuffix && rp->codeSuffix[0] ){
   fprintf(out, "%s", rp->codeSuffix);
   for(cp=rp->codeSuffix; *cp; cp++){ if( *cp=='\n' ) (*lineno)++; }
 }

 if( rp->codePrefix ){
   fprintf(out, "}\n"); (*lineno)++;
 }

 return;
}
