
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct smartypants_data {int dummy; } ;
struct buf {int dummy; } ;


 scalar_t__ HTML_TAG_CLOSE ;
 scalar_t__ HTML_TAG_OPEN ;
 int bufput (struct buf*,char const*,int) ;
 scalar_t__ sdhtml_is_tag (char const*,size_t,char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static size_t
smartypants_cb__ltag(struct buf *ob, struct smartypants_data *smrt, uint8_t previous_char, const uint8_t *text, size_t size)
{
 static const char *skip_tags[] = {
   "pre", "code", "var", "samp", "kbd", "math", "script", "style"
 };
 static const size_t skip_tags_count = 8;

 size_t next_to_closing_a = 0;
 size_t tag, i = 0;

 while (i < size && text[i] != '>')
  i++;

 for (tag = 0; tag < skip_tags_count; ++tag) {
  if (sdhtml_is_tag(text, size, skip_tags[tag]) == HTML_TAG_OPEN)
   break;
 }

 if (tag < skip_tags_count) {
  for (;;) {
   while (i < size && text[i] != '<')
    i++;

   if (i == size)
    break;

   if (sdhtml_is_tag(text + i, size - i, skip_tags[tag]) == HTML_TAG_CLOSE)
    break;

   i++;
  }

  while (i < size && text[i] != '>')
   i++;
 }

 if (sdhtml_is_tag(text, size, "a") == HTML_TAG_CLOSE) {
  while (i < size && text[i] != '>')
   i++;

  next_to_closing_a = 1;
 }

 bufput(ob, text, i + 1);




 if (next_to_closing_a && strncmp("&#39;", text+(i+1), 5) == 0) {
  bufput(ob, "&rsquo;", 7);
  i += 5;
 }

 return i;
}
