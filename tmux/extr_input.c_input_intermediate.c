
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int interm_len; char* interm_buf; char ch; int flags; } ;


 int INPUT_DISCARD ;

__attribute__((used)) static int
input_intermediate(struct input_ctx *ictx)
{
 if (ictx->interm_len == (sizeof ictx->interm_buf) - 1)
  ictx->flags |= INPUT_DISCARD;
 else {
  ictx->interm_buf[ictx->interm_len++] = ictx->ch;
  ictx->interm_buf[ictx->interm_len] = '\0';
 }

 return (0);
}
