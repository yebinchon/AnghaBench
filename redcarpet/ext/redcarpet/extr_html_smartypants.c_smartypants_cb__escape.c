
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct smartypants_data {int dummy; } ;
struct buf {int dummy; } ;


 int bufputc (struct buf*,int const) ;

__attribute__((used)) static size_t
smartypants_cb__escape(struct buf *ob, struct smartypants_data *smrt, uint8_t previous_char, const uint8_t *text, size_t size)
{
 if (size < 2)
  return 0;

 switch (text[1]) {
 case '\\':
 case '"':
 case '\'':
 case '.':
 case '-':
 case '`':
  bufputc(ob, text[1]);
  return 1;

 default:
  bufputc(ob, '\\');
  return 0;
 }
}
