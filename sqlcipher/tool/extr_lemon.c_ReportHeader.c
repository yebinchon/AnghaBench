
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lemon {char* tokenprefix; int nterminal; TYPE_1__** symbols; } ;
struct TYPE_2__ {int name; } ;
typedef int FILE ;


 int EOF ;
 int LINESIZE ;
 int fclose (int *) ;
 int fgetc (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * file_open (struct lemon*,char*,char*) ;
 int fprintf (int *,char*,char const*,int,int) ;
 int lemon_sprintf (char*,char*,char const*,int,int) ;
 scalar_t__ strcmp (char*,char*) ;

void ReportHeader(struct lemon *lemp)
{
  FILE *out, *in;
  const char *prefix;
  char line[LINESIZE];
  char pattern[LINESIZE];
  int i;

  if( lemp->tokenprefix ) prefix = lemp->tokenprefix;
  else prefix = "";
  in = file_open(lemp,".h","rb");
  if( in ){
    int nextChar;
    for(i=1; i<lemp->nterminal && fgets(line,LINESIZE,in); i++){
      lemon_sprintf(pattern,"#define %s%-30s %3d\n",
                    prefix,lemp->symbols[i]->name,i);
      if( strcmp(line,pattern) ) break;
    }
    nextChar = fgetc(in);
    fclose(in);
    if( i==lemp->nterminal && nextChar==EOF ){

      return;
    }
  }
  out = file_open(lemp,".h","wb");
  if( out ){
    for(i=1; i<lemp->nterminal; i++){
      fprintf(out,"#define %s%-30s %3d\n",prefix,lemp->symbols[i]->name,i);
    }
    fclose(out);
  }
  return;
}
