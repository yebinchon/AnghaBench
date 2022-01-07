
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int category; } ;
typedef TYPE_1__ utf8proc_property_t ;
typedef int uint8_t ;
typedef scalar_t__ ssize_t ;
typedef int int32_t ;


 scalar_t__ strlen (char const*) ;
 TYPE_1__* utf8proc_get_property (int ) ;
 scalar_t__ utf8proc_iterate (int *,scalar_t__,int *) ;

__attribute__((used)) static bool
utf8_string_contains(const char *text, int category)
{
 ssize_t textlen = strlen(text);

 while (textlen > 0) {
  int32_t unicode;
  ssize_t slen = utf8proc_iterate((uint8_t *) text, textlen, &unicode);
  const utf8proc_property_t *property;

  if (slen <= 0)
   break;

  property = utf8proc_get_property(unicode);
  if (property->category & category)
   return 1;

  text += slen;
  textlen -= slen;
 }

 return 0;
}
