
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct input_param {scalar_t__ type; int num; } ;
struct input_ctx {size_t param_list_len; struct input_param* param_list; } ;


 scalar_t__ INPUT_MISSING ;
 scalar_t__ INPUT_STRING ;

__attribute__((used)) static int
input_get(struct input_ctx *ictx, u_int validx, int minval, int defval)
{
 struct input_param *ip;
 int retval;

 if (validx >= ictx->param_list_len)
     return (defval);
 ip = &ictx->param_list[validx];
 if (ip->type == INPUT_MISSING)
  return (defval);
 if (ip->type == INPUT_STRING)
  return (-1);
 retval = ip->num;
 if (retval < minval)
  return (minval);
 return (retval);
}
