
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int param_len; char* param_buf; char ch; int flags; } ;


 int INPUT_DISCARD ;

__attribute__((used)) static int
input_parameter(struct input_ctx *ictx)
{
 if (ictx->param_len == (sizeof ictx->param_buf) - 1)
  ictx->flags |= INPUT_DISCARD;
 else {
  ictx->param_buf[ictx->param_len++] = ictx->ch;
  ictx->param_buf[ictx->param_len] = '\0';
 }

 return (0);
}
