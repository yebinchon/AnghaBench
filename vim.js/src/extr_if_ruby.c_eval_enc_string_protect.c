
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rb_encoding ;
typedef int char_u ;
typedef int VALUE ;


 char const* StringValuePtr (int ) ;
 int get_option_value (int *,long*,int **,int ) ;
 int * rb_enc_find (char*) ;
 int rb_enc_name (int *) ;
 int rb_eval_string_protect (char const*,int*) ;
 int rb_sprintf (char*,int ,char const*) ;
 int vim_free (int *) ;

__attribute__((used)) static VALUE
eval_enc_string_protect(const char *str, int *state)
{
    return rb_eval_string_protect(str, state);
}
