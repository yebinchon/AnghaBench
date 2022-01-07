
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fs; } ;
typedef TYPE_1__ LexState ;
typedef int FuncState ;
typedef int FuncScope ;


 int fscope_begin (int *,int *,int ) ;
 int fscope_end (int *) ;
 int parse_chunk (TYPE_1__*) ;

__attribute__((used)) static void parse_block(LexState *ls)
{
  FuncState *fs = ls->fs;
  FuncScope bl;
  fscope_begin(fs, &bl, 0);
  parse_chunk(ls);
  fscope_end(fs);
}
