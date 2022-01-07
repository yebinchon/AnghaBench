
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct smartypants_data {int in_dquote; } ;
struct buf {int dummy; } ;


 int BUFPUTSL (struct buf*,char*) ;
 int smartypants_quotes (struct buf*,int ,int const,char,int *) ;

__attribute__((used)) static size_t
smartypants_cb__dquote(struct buf *ob, struct smartypants_data *smrt, uint8_t previous_char, const uint8_t *text, size_t size)
{
 if (!smartypants_quotes(ob, previous_char, size > 0 ? text[1] : 0, 'd', &smrt->in_dquote))
  BUFPUTSL(ob, "&quot;");

 return 0;
}
