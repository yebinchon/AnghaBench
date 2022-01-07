
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int L; } ;
typedef int TValue ;
typedef int TString ;
typedef TYPE_1__ FuncState ;


 int addk (TYPE_1__*,int *,int *) ;
 int setsvalue (int ,int *,int *) ;

__attribute__((used)) static int luaK_stringK(FuncState*fs,TString*s){
TValue o;
setsvalue(fs->L,&o,s);
return addk(fs,&o,&o);
}
