
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static char *
seamless_get_token(char **s)
{
 char *comma, *head;
 head = *s;

 if (!head)
  return ((void*)0);

 comma = strchr(head, ',');
 if (comma)
 {
  *comma = '\0';
  *s = comma + 1;
 }
 else
 {
  *s = ((void*)0);
 }

 return head;
}
