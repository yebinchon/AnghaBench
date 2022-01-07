
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef enum mkd_autolink { ____Placeholder_mkd_autolink } mkd_autolink ;


 int MKDA_EMAIL ;
 int MKDA_NORMAL ;
 int MKDA_NOT_AUTOLINK ;
 scalar_t__ _isalnum (char) ;
 size_t is_mail_autolink (char*,size_t) ;

__attribute__((used)) static size_t
tag_length(uint8_t *data, size_t size, enum mkd_autolink *autolink)
{
 size_t i, j;


 if (size < 3) return 0;


 if (data[0] != '<') return 0;
 i = (data[1] == '/') ? 2 : 1;

 if (!_isalnum(data[i]))
  return 0;


 *autolink = MKDA_NOT_AUTOLINK;


 while (i < size && (_isalnum(data[i]) || data[i] == '.' || data[i] == '+' || data[i] == '-'))
  i++;

 if (i > 1 && data[i] == '@') {
  if ((j = is_mail_autolink(data + i, size - i)) != 0) {
   *autolink = MKDA_EMAIL;
   return i + j;
  }
 }

 if (i > 2 && data[i] == ':') {
  *autolink = MKDA_NORMAL;
  i++;
 }


 if (i >= size)
  *autolink = MKDA_NOT_AUTOLINK;

 else if (*autolink) {
  j = i;

  while (i < size) {
   if (data[i] == '\\') i += 2;
   else if (data[i] == '>' || data[i] == '\'' ||
     data[i] == '"' || data[i] == ' ' || data[i] == '\n')
     break;
   else i++;
  }

  if (i >= size) return 0;
  if (i > j && data[i] == '>') return i + 1;

  *autolink = MKDA_NOT_AUTOLINK;
 }


 while (i < size && data[i] != '>') i++;
 if (i >= size) return 0;
 return i + 1;
}
