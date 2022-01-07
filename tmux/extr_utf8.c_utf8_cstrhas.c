
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utf8_data {scalar_t__ size; int data; } ;


 int free (struct utf8_data*) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 struct utf8_data* utf8_fromcstr (char const*) ;

int
utf8_cstrhas(const char *s, const struct utf8_data *ud)
{
 struct utf8_data *copy, *loop;
 int found = 0;

 copy = utf8_fromcstr(s);
 for (loop = copy; loop->size != 0; loop++) {
  if (loop->size != ud->size)
   continue;
  if (memcmp(loop->data, ud->data, loop->size) == 0) {
   found = 1;
   break;
  }
 }
 free(copy);

 return (found);
}
