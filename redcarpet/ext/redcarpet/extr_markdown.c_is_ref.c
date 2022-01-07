
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct link_ref {void* title; void* link; } ;


 struct link_ref* add_link_ref (struct link_ref**,char const*,size_t) ;
 void* bufnew (size_t) ;
 int bufput (void*,char const*,size_t) ;
 scalar_t__ strchr (char*,char const) ;

__attribute__((used)) static int
is_ref(const uint8_t *data, size_t beg, size_t end, size_t *last, struct link_ref **refs)
{

 size_t i = 0;
 size_t id_offset, id_end;
 size_t link_offset, link_end;
 size_t title_offset, title_end;
 size_t line_end;


 if (beg + 3 >= end) return 0;
 if (data[beg] == ' ') { i = 1;
 if (data[beg + 1] == ' ') { i = 2;
 if (data[beg + 2] == ' ') { i = 3;
 if (data[beg + 3] == ' ') return 0; } } }
 i += beg;


 if (data[i] != '[') return 0;
 i++;
 id_offset = i;
 while (i < end && data[i] != '\n' && data[i] != '\r' && data[i] != ']')
  i++;
 if (i >= end || data[i] != ']') return 0;
 id_end = i;


 i++;
 if (i >= end || data[i] != ':') return 0;
 i++;
 while (i < end && strchr("\t ", data[i])) i++;
 if (i < end && (data[i] == '\n' || data[i] == '\r')) {
  i++;
  if (i < end && data[i] == '\r' && data[i - 1] == '\n') i++; }
 while (i < end && strchr("\t ", data[i])) i++;
 if (i >= end) return 0;


 if (data[i] == '<')
  i++;

 link_offset = i;

 while (i < end && data[i] != ' ' && data[i] != '\n' && data[i] != '\r')
  i++;

 if (data[i - 1] == '>') link_end = i - 1;
 else link_end = i;


 while (i < end && strchr("\t ", data[i])) i++;
 if (i < end && data[i] != '\n' && data[i] != '\r'
   && data[i] != '\'' && data[i] != '"' && data[i] != '(')
  return 0;
 line_end = 0;

 if (i >= end || data[i] == '\r' || data[i] == '\n') line_end = i;
 if (i + 1 < end && data[i] == '\n' && data[i + 1] == '\r')
  line_end = i + 1;


 if (line_end) {
  i = line_end + 1;
  while (i < end && strchr("\t ", data[i])) i++; }



 title_offset = title_end = 0;
 if (i + 1 < end
 && (data[i] == '\'' || data[i] == '"' || data[i] == '(')) {
  i++;
  title_offset = i;

  while (i < end && data[i] != '\n' && data[i] != '\r') i++;
  if (i + 1 < end && data[i] == '\n' && data[i + 1] == '\r')
   title_end = i + 1;
  else title_end = i;

  i -= 1;
  while (i > title_offset && data[i] == ' ')
   i -= 1;
  if (i > title_offset
  && (data[i] == '\'' || data[i] == '"' || data[i] == ')')) {
   line_end = title_end;
   title_end = i; } }

 if (!line_end || link_end == link_offset)
  return 0;


 if (last)
  *last = line_end;

 if (refs) {
  struct link_ref *ref;

  ref = add_link_ref(refs, data + id_offset, id_end - id_offset);
  if (!ref)
   return 0;

  ref->link = bufnew(link_end - link_offset);
  bufput(ref->link, data + link_offset, link_end - link_offset);

  if (title_end > title_offset) {
   ref->title = bufnew(title_end - title_offset);
   bufput(ref->title, data + title_offset, title_end - title_offset);
  }
 }

 return 1;
}
