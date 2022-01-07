
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_options {int dummy; } ;
typedef int FILE ;


 int OptPrint () ;
 char** argv ;
 int * errstream ;
 int exit (int) ;
 int fprintf (int *,char*,char*) ;
 scalar_t__ handleflags (int,int *) ;
 scalar_t__ handleswitch (int,int *) ;
 struct s_options* op ;
 scalar_t__ strchr (char*,char) ;

int OptInit(char **a, struct s_options *o, FILE *err)
{
  int errcnt = 0;
  argv = a;
  op = o;
  errstream = err;
  if( argv && *argv && op ){
    int i;
    for(i=1; argv[i]; i++){
      if( argv[i][0]=='+' || argv[i][0]=='-' ){
        errcnt += handleflags(i,err);
      }else if( strchr(argv[i],'=') ){
        errcnt += handleswitch(i,err);
      }
    }
  }
  if( errcnt>0 ){
    fprintf(err,"Valid command line options for \"%s\" are:\n",*a);
    OptPrint();
    exit(1);
  }
  return 0;
}
