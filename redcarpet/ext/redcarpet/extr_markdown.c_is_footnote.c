
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct footnote_ref {struct buf* contents; } ;
struct footnote_list {int dummy; } ;
struct buf {int dummy; } ;


 int add_footnote_ref (struct footnote_list*,struct footnote_ref*) ;
 struct buf* bufnew (int) ;
 int bufput (struct buf*,char const*,int) ;
 int bufputc (struct buf*,char) ;
 struct footnote_ref* create_footnote_ref (struct footnote_list*,char const*,size_t) ;
 int free_footnote_ref (struct footnote_ref*) ;
 scalar_t__ is_empty (char const*,size_t) ;

__attribute__((used)) static int
is_footnote(const uint8_t *data, size_t beg, size_t end, size_t *last, struct footnote_list *list)
{
 size_t i = 0;
 struct buf *contents = 0;
 size_t ind = 0;
 int in_empty = 0;
 size_t start = 0;

 size_t id_offset, id_end;


 if (beg + 3 >= end) return 0;
 if (data[beg] == ' ') { i = 1;
 if (data[beg + 1] == ' ') { i = 2;
 if (data[beg + 2] == ' ') { i = 3;
 if (data[beg + 3] == ' ') return 0; } } }
 i += beg;


 if (data[i] != '[') return 0;
 i++;
 if (i >= end || data[i] != '^') return 0;
 i++;
 id_offset = i;
 while (i < end && data[i] != '\n' && data[i] != '\r' && data[i] != ']')
  i++;
 if (i >= end || data[i] != ']') return 0;
 id_end = i;


 i++;
 if (i >= end || data[i] != ':') return 0;
 i++;


 contents = bufnew(64);

 start = i;


 while (i < end) {
  while (i < end && data[i] != '\n' && data[i] != '\r') i++;


  if (is_empty(data + start, i - start)) {
   in_empty = 1;
   if (i < end && (data[i] == '\n' || data[i] == '\r')) {
    i++;
    if (i < end && data[i] == '\n' && data[i - 1] == '\r') i++;
   }
   start = i;
   continue;
  }


  ind = 0;
  while (ind < 4 && start + ind < end && data[start + ind] == ' ')
   ind++;




  if (ind == 0) {
   if (start == id_end + 2 && data[start] == '\t') {}
   else break;
  }
  else if (in_empty) {
   bufputc(contents, '\n');
  }

  in_empty = 0;


  bufput(contents, data + start + ind, i - start - ind);

  if (i < end) {
   bufput(contents, "\n", 1);
   if (i < end && (data[i] == '\n' || data[i] == '\r')) {
    i++;
    if (i < end && data[i] == '\n' && data[i - 1] == '\r') i++;
   }
  }
  start = i;
 }

 if (last)
  *last = start;

 if (list) {
  struct footnote_ref *ref;
  ref = create_footnote_ref(list, data + id_offset, id_end - id_offset);
  if (!ref)
   return 0;
  if (!add_footnote_ref(list, ref)) {
   free_footnote_ref(ref);
   return 0;
  }
  ref->contents = contents;
 }

 return 1;
}
