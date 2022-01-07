
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lemon {char* outname; int errorcnt; } ;
typedef int FILE ;


 char* file_makename (struct lemon*,char const*) ;
 int * fopen (char*,char const*) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int stderr ;

FILE *file_open(
  struct lemon *lemp,
  const char *suffix,
  const char *mode
){
  FILE *fp;

  if( lemp->outname ) free(lemp->outname);
  lemp->outname = file_makename(lemp, suffix);
  fp = fopen(lemp->outname,mode);
  if( fp==0 && *mode=='w' ){
    fprintf(stderr,"Can't open file \"%s\".\n",lemp->outname);
    lemp->errorcnt++;
    return 0;
  }
  return fp;
}
