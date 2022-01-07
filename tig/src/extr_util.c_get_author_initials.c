
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int initials ;


 scalar_t__ is_initial_sep (char const) ;
 int memset (char*,int ,int) ;
 char* strchr (char const*,char) ;
 unsigned char utf8_char_length (char const*) ;

__attribute__((used)) static const char *
get_author_initials(const char *author)
{
 static char initials[256];
 size_t pos = 0;
 const char *end = strchr(author, '\0');



 memset(initials, 0, sizeof(initials));
 while (author < end) {
  unsigned char bytes;
  size_t i;

  while (author < end && (isspace(*author) || ispunct(*author) || (*author) == '@' || (*author) == '-'))
   author++;

  bytes = utf8_char_length(author);
  if (bytes >= sizeof(initials) - 1 - pos)
   break;
  while (bytes--) {
   initials[pos++] = *author++;
  }

  i = pos;
  while (author < end && !(isspace(*author) || ispunct(*author) || (*author) == '@' || (*author) == '-')) {
   bytes = utf8_char_length(author);
   if (bytes >= sizeof(initials) - 1 - i) {
    while (author < end && !(isspace(*author) || ispunct(*author) || (*author) == '@' || (*author) == '-'))
     author++;
    break;
   }
   while (bytes--) {
    initials[i++] = *author++;
   }
  }

  initials[i++] = 0;
 }

 return initials;
}
