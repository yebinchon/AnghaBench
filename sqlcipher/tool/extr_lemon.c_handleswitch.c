
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ label; int type; scalar_t__ arg; } ;
typedef int FILE ;
 scalar_t__* argv ;
 int assert (int) ;
 char* emsg ;
 int errline (int,int,int *) ;
 int fprintf (int *,char*,char*) ;
 TYPE_1__* op ;
 char* strchr (scalar_t__,char) ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;
 double strtod (char*,char**) ;
 int strtol (char*,char**,int ) ;
 void stub1 (double) ;
 void stub2 (int) ;
 void stub3 (char*) ;

__attribute__((used)) static int handleswitch(int i, FILE *err)
{
  int lv = 0;
  double dv = 0.0;
  char *sv = 0, *end;
  char *cp;
  int j;
  int errcnt = 0;
  cp = strchr(argv[i],'=');
  assert( cp!=0 );
  *cp = 0;
  for(j=0; op[j].label; j++){
    if( strcmp(argv[i],op[j].label)==0 ) break;
  }
  *cp = '=';
  if( op[j].label==0 ){
    if( err ){
      fprintf(err,"%sundefined option.\n",emsg);
      errline(i,0,err);
    }
    errcnt++;
  }else{
    cp++;
    switch( op[j].type ){
      case 131:
      case 133:
        if( err ){
          fprintf(err,"%soption requires an argument.\n",emsg);
          errline(i,0,err);
        }
        errcnt++;
        break;
      case 135:
      case 134:
        dv = strtod(cp,&end);
        if( *end ){
          if( err ){
            fprintf(err,
               "%sillegal character in floating-point argument.\n",emsg);
            errline(i,(int)((char*)end-(char*)argv[i]),err);
          }
          errcnt++;
        }
        break;
      case 129:
      case 132:
        lv = strtol(cp,&end,0);
        if( *end ){
          if( err ){
            fprintf(err,"%sillegal character in integer argument.\n",emsg);
            errline(i,(int)((char*)end-(char*)argv[i]),err);
          }
          errcnt++;
        }
        break;
      case 128:
      case 130:
        sv = cp;
        break;
    }
    switch( op[j].type ){
      case 131:
      case 133:
        break;
      case 135:
        *(double*)(op[j].arg) = dv;
        break;
      case 134:
        (*(void(*)(double))(op[j].arg))(dv);
        break;
      case 129:
        *(int*)(op[j].arg) = lv;
        break;
      case 132:
        (*(void(*)(int))(op[j].arg))((int)lv);
        break;
      case 128:
        *(char**)(op[j].arg) = sv;
        break;
      case 130:
        (*(void(*)(char *))(op[j].arg))(sv);
        break;
    }
  }
  return errcnt;
}
