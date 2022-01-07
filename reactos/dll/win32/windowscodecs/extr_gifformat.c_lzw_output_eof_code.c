
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzw_state {int eof_code; } ;


 int lzw_output_code (struct lzw_state*,int ) ;

__attribute__((used)) static inline int lzw_output_eof_code(struct lzw_state *state)
{
    return lzw_output_code(state, state->eof_code);
}
