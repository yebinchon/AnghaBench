
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expdesc ;
typedef int LexState ;


 int codestring (int *,int *,int ) ;
 int str_checkname (int *) ;

__attribute__((used)) static void checkname(LexState*ls,expdesc*e){
codestring(ls,e,str_checkname(ls));
}
