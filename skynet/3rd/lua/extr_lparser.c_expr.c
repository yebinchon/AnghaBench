
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expdesc ;
typedef int LexState ;


 int subexpr (int *,int *,int ) ;

__attribute__((used)) static void expr (LexState *ls, expdesc *v) {
  subexpr(ls, v, 0);
}
