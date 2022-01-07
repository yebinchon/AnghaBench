
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; scalar_t__ size; } ;
typedef TYPE_1__ fz_stext_char ;



__attribute__((used)) static float avg_font_size_of_line(fz_stext_char *ch)
{
 float size = 0;
 int n = 0;
 if (!ch)
  return 0;
 while (ch)
 {
  size += ch->size;
  ++n;
  ch = ch->next;
 }
 return size / n;
}
