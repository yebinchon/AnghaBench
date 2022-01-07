
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct input_param {scalar_t__ type; int num; int str; } ;
struct input_ctx {size_t param_list_len; scalar_t__ param_len; char* param_buf; struct input_param* param_list; } ;


 scalar_t__ INPUT_MISSING ;
 scalar_t__ INPUT_NUMBER ;
 scalar_t__ INPUT_STRING ;
 int INT_MAX ;
 int free (int ) ;
 int log_debug (char*,size_t,...) ;
 size_t nitems (struct input_param*) ;
 int * strchr (char*,char) ;
 char* strsep (char**,char*) ;
 int strtonum (char*,int ,int ,char const**) ;
 int xstrdup (char*) ;

__attribute__((used)) static int
input_split(struct input_ctx *ictx)
{
 const char *errstr;
 char *ptr, *out;
 struct input_param *ip;
 u_int i;

 for (i = 0; i < ictx->param_list_len; i++) {
  if (ictx->param_list[i].type == INPUT_STRING)
   free(ictx->param_list[i].str);
 }
 ictx->param_list_len = 0;

 if (ictx->param_len == 0)
  return (0);
 ip = &ictx->param_list[0];

 ptr = ictx->param_buf;
 while ((out = strsep(&ptr, ";")) != ((void*)0)) {
  if (*out == '\0')
   ip->type = INPUT_MISSING;
  else {
   if (strchr(out, ':') != ((void*)0)) {
    ip->type = INPUT_STRING;
    ip->str = xstrdup(out);
   } else {
    ip->type = INPUT_NUMBER;
    ip->num = strtonum(out, 0, INT_MAX, &errstr);
    if (errstr != ((void*)0))
     return (-1);
   }
  }
  ip = &ictx->param_list[++ictx->param_list_len];
  if (ictx->param_list_len == nitems(ictx->param_list))
   return (-1);
 }

 for (i = 0; i < ictx->param_list_len; i++) {
  ip = &ictx->param_list[i];
  if (ip->type == INPUT_MISSING)
   log_debug("parameter %u: missing", i);
  else if (ip->type == INPUT_STRING)
   log_debug("parameter %u: string %s", i, ip->str);
  else if (ip->type == INPUT_NUMBER)
   log_debug("parameter %u: number %d", i, ip->num);
 }

 return (0);
}
