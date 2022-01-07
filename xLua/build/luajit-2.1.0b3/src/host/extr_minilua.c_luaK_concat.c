
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FuncState ;


 int fixjump (int *,int,int) ;
 int getjump (int *,int) ;

__attribute__((used)) static void luaK_concat(FuncState*fs,int*l1,int l2){
if(l2==(-1))return;
else if(*l1==(-1))
*l1=l2;
else{
int list=*l1;
int next;
while((next=getjump(fs,list))!=(-1))
list=next;
fixjump(fs,list,l2);
}
}
