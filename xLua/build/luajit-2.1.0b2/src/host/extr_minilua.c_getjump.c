
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* f; } ;
struct TYPE_4__ {int * code; } ;
typedef TYPE_2__ FuncState ;


 int GETARG_sBx (int ) ;

__attribute__((used)) static int getjump(FuncState*fs,int pc){
int offset=GETARG_sBx(fs->f->code[pc]);
if(offset==(-1))
return(-1);
else
return(pc+1)+offset;
}
