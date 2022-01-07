
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* str_handle_lines_t ) (int *,char*,void*) ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int STRNCPY (char*,char*,size_t) ;
 int True ;
 char* strchr (char*,char) ;
 size_t strlen (char const*) ;
 int strncat (char*,char const*,size_t) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (size_t) ;

BOOL
str_handle_lines(RDPCLIENT * This, const char *input, char **rest, str_handle_lines_t linehandler, void *data)
{
 char *buf, *p;
 char *oldrest;
 size_t inputlen;
 size_t buflen;
 size_t restlen = 0;
 BOOL ret = True;


 inputlen = strlen(input);
 if (*rest)
  restlen = strlen(*rest);
 buflen = restlen + inputlen + 1;
 buf = (char *) xmalloc(buflen);
 buf[0] = '\0';
 if (*rest)
  STRNCPY(buf, *rest, buflen);
 strncat(buf, input, inputlen);
 p = buf;

 while (1)
 {
  char *newline = strchr(p, '\n');
  if (newline)
  {
   *newline = '\0';
   if (!linehandler(This, p, data))
   {
    p = newline + 1;
    ret = False;
    break;
   }
   p = newline + 1;
  }
  else
  {
   break;

  }
 }


 oldrest = *rest;
 restlen = buf + buflen - p;
 *rest = (char *) xmalloc(restlen);
 STRNCPY((*rest), p, restlen);
 xfree(oldrest);

 xfree(buf);
 return ret;
}
