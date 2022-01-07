
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {size_t input_space; int input_len; char* input_buf; char ch; int flags; } ;


 size_t INPUT_BUF_LIMIT ;
 int INPUT_DISCARD ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static int
input_input(struct input_ctx *ictx)
{
 size_t available;

 available = ictx->input_space;
 while (ictx->input_len + 1 >= available) {
  available *= 2;
  if (available > INPUT_BUF_LIMIT) {
   ictx->flags |= INPUT_DISCARD;
   return (0);
  }
  ictx->input_buf = xrealloc(ictx->input_buf, available);
  ictx->input_space = available;
 }
 ictx->input_buf[ictx->input_len++] = ictx->ch;
 ictx->input_buf[ictx->input_len] = '\0';

 return (0);
}
