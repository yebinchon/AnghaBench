
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ _isalnum (int) ;

__attribute__((used)) static size_t
is_mail_autolink(uint8_t *data, size_t size)
{
 size_t i = 0, nb = 0;


 for (i = 0; i < size; ++i) {
  if (_isalnum(data[i]))
   continue;

  switch (data[i]) {
   case '@':
    nb++;

   case '-':
   case '.':
   case '_':
    break;

   case '>':
    return (nb == 1) ? i + 1 : 0;

   default:
    return 0;
  }
 }

 return 0;
}
