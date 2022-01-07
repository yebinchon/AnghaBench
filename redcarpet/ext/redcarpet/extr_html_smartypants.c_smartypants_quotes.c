
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buf {int dummy; } ;
typedef int ent ;


 int bufputs (struct buf*,char*) ;
 int snprintf (char*,int,char*,char,int ) ;
 int word_boundary (int ) ;

__attribute__((used)) static int
smartypants_quotes(struct buf *ob, uint8_t previous_char, uint8_t next_char, uint8_t quote, int *is_open)
{
 char ent[8];

 if (*is_open && !word_boundary(next_char))
  return 0;

 if (!(*is_open) && !word_boundary(previous_char))
  return 0;

 snprintf(ent, sizeof(ent), "&%c%cquo;", (*is_open) ? 'r' : 'l', quote);
 *is_open = !(*is_open);
 bufputs(ob, ent);
 return 1;
}
