
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (scalar_t__,int) ;
 int free (char*) ;
 int strchr (char*,char) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void unescape(char *value) {
 if (!strchr(value, '\\')) {
  return;
 }
 char *copy = calloc(strlen(value) + 1, 1);
 char *readhead = value;
 char *writehead = copy;
 while (*readhead) {
  if (*readhead == '\\' && *(readhead + 1) == '"') {

   ++readhead;
  }
  *writehead = *readhead;
  ++writehead;
  ++readhead;
 }
 strcpy(value, copy);
 free(copy);
}
