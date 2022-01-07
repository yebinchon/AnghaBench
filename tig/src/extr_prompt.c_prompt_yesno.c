
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input {int member_1; int * member_2; int member_0; } ;


 int SIZEOF_STR ;
 int prompt_input (char*,struct input*) ;
 int prompt_yesno_handler ;
 int string_format (char*,char*,char const*) ;

bool
prompt_yesno(const char *prompt)
{
 char prompt2[SIZEOF_STR];
 struct input input = { prompt_yesno_handler, 0, ((void*)0) };

 if (!string_format(prompt2, "%s [Yy/Nn]", prompt))
  return 0;

 return !!prompt_input(prompt2, &input);
}
