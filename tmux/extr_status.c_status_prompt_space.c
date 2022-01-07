
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utf8_data {int size; int width; char* data; } ;



__attribute__((used)) static int
status_prompt_space(const struct utf8_data *ud)
{
 if (ud->size != 1 || ud->width != 1)
  return (0);
 return (*ud->data == ' ');
}
