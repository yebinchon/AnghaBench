
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input {scalar_t__ scroll; scalar_t__ end; scalar_t__ q; scalar_t__ text; scalar_t__ p; } ;


 int fz_strlcpy (scalar_t__,char const*,int) ;
 scalar_t__ strlen (scalar_t__) ;

void ui_input_init(struct input *input, const char *text)
{
 fz_strlcpy(input->text, text, sizeof input->text);
 input->end = input->text + strlen(input->text);
 input->p = input->text;
 input->q = input->end;
 input->scroll = 0;
}
