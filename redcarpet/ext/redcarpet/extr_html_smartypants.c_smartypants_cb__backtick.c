
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct smartypants_data {int in_dquote; } ;
struct buf {int dummy; } ;


 int bufputc (struct buf*,char const) ;
 scalar_t__ smartypants_quotes (struct buf*,char,char const,char,int *) ;

__attribute__((used)) static size_t
smartypants_cb__backtick(struct buf *ob, struct smartypants_data *smrt, uint8_t previous_char, const uint8_t *text, size_t size)
{
 if (size >= 2 && text[1] == '`') {
  if (smartypants_quotes(ob, previous_char, size >= 3 ? text[2] : 0, 'd', &smrt->in_dquote))
   return 1;
 }

 bufputc(ob, text[0]);
 return 0;
}
