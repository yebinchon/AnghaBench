
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct utf8_data {int size; char* data; } ;


 int memcpy (struct utf8_data*,struct utf8_data const*,int) ;

void
utf8_copy(struct utf8_data *to, const struct utf8_data *from)
{
 u_int i;

 memcpy(to, from, sizeof *to);

 for (i = to->size; i < sizeof to->data; i++)
  to->data[i] = '\0';
}
