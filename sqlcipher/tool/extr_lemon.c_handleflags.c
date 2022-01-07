
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ label; scalar_t__ arg; scalar_t__ type; } ;
typedef int FILE ;


 scalar_t__ OPT_FFLAG ;
 scalar_t__ OPT_FLAG ;
 scalar_t__ OPT_FSTR ;
 char** argv ;
 char* emsg ;
 int errline (int,int,int *) ;
 int fprintf (int *,char*,char*) ;
 int lemonStrlen (scalar_t__) ;
 TYPE_1__* op ;
 scalar_t__ strncmp (char*,scalar_t__,int ) ;
 void stub1 (int) ;
 void stub2 (char*) ;

__attribute__((used)) static int handleflags(int i, FILE *err)
{
  int v;
  int errcnt = 0;
  int j;
  for(j=0; op[j].label; j++){
    if( strncmp(&argv[i][1],op[j].label,lemonStrlen(op[j].label))==0 ) break;
  }
  v = argv[i][0]=='-' ? 1 : 0;
  if( op[j].label==0 ){
    if( err ){
      fprintf(err,"%sundefined option.\n",emsg);
      errline(i,1,err);
    }
    errcnt++;
  }else if( op[j].arg==0 ){

  }else if( op[j].type==OPT_FLAG ){
    *((int*)op[j].arg) = v;
  }else if( op[j].type==OPT_FFLAG ){
    (*(void(*)(int))(op[j].arg))(v);
  }else if( op[j].type==OPT_FSTR ){
    (*(void(*)(char *))(op[j].arg))(&argv[i][2]);
  }else{
    if( err ){
      fprintf(err,"%smissing argument on switch.\n",emsg);
      errline(i,1,err);
    }
    errcnt++;
  }
  return errcnt;
}
