
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {char* utf8; int pos; int edited; } ;
typedef TYPE_1__ editable_str ;


 int fz_chartorune (int*,char*) ;
 int memmove (char*,char*,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
walk_string(fz_context *ctx, int uni, int remove, editable_str *str)
{
 int rune;

 if (str->utf8 == ((void*)0) || str->pos == -1)
  return;

 do
 {
  char *s = &str->utf8[str->pos];
  size_t len;
  int n = fz_chartorune(&rune, s);
  if (rune == uni)
  {

   str->pos += n;
  }
  else if (uni == 32) {



   break;
  }
  else if (rune == 32) {




  }
  else
  {

   str->pos = -1;
   break;
  }
  if (remove)
  {
   len = strlen(s+n);
   memmove(s, s+n, len+1);
   str->edited = 1;
  }
 }
 while (rune != uni);
}
