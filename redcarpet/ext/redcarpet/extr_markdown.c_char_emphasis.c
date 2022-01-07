
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct sd_markdown {int ext_flags; } ;
struct buf {int dummy; } ;


 int MKDEXT_NO_INTRA_EMPHASIS ;
 scalar_t__ _isalnum (char) ;
 scalar_t__ _isspace (char) ;
 size_t parse_emph1 (struct buf*,struct sd_markdown*,char*,size_t,char) ;
 size_t parse_emph2 (struct buf*,struct sd_markdown*,char*,size_t,char) ;
 size_t parse_emph3 (struct buf*,struct sd_markdown*,char*,size_t,char) ;

__attribute__((used)) static size_t
char_emphasis(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t offset, size_t size)
{
 uint8_t c = data[0];
 size_t ret;

 if (rndr->ext_flags & MKDEXT_NO_INTRA_EMPHASIS) {
  if (offset > 0 && _isalnum(data[-1]))
   return 0;
 }

 if (size > 2 && data[1] != c) {


  if (c == '~' || c == '=' || _isspace(data[1]) || (ret = parse_emph1(ob, rndr, data + 1, size - 1, c)) == 0)
   return 0;

  return ret + 1;
 }

 if (size > 3 && data[1] == c && data[2] != c) {
  if (_isspace(data[2]) || (ret = parse_emph2(ob, rndr, data + 2, size - 2, c)) == 0)
   return 0;

  return ret + 2;
 }

 if (size > 4 && data[1] == c && data[2] == c && data[3] != c) {
  if (c == '~' || c == '=' || _isspace(data[3]) || (ret = parse_emph3(ob, rndr, data + 3, size - 3, c)) == 0)
   return 0;

  return ret + 3;
 }

 return 0;
}
