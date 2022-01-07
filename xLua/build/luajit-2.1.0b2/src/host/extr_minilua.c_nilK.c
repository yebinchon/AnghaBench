
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h; int L; } ;
typedef int TValue ;
typedef TYPE_1__ FuncState ;


 int addk (TYPE_1__*,int *,int *) ;
 int sethvalue (int ,int *,int ) ;
 int setnilvalue (int *) ;

__attribute__((used)) static int nilK(FuncState*fs){
TValue k,v;
setnilvalue(&v);
sethvalue(fs->L,&k,fs->h);
return addk(fs,&k,&v);
}
