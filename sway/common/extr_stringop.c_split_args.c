
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (int) ;
 char** realloc (char**,int) ;
 scalar_t__ strchr (int ,char const) ;
 int strncpy (char*,char const*,int) ;
 int strspn (char const*,int ) ;
 int whitespace ;

char **split_args(const char *start, int *argc) {
 *argc = 0;
 int alloc = 2;
 char **argv = malloc(sizeof(char *) * alloc);
 bool in_token = 0;
 bool in_string = 0;
 bool in_char = 0;
 bool in_brackets = 0;
 bool escaped = 0;
 const char *end = start;
 if (start) {
  while (*start) {
   if (!in_token) {
    start = (end += strspn(end, whitespace));
    in_token = 1;
   }
   if (*end == '"' && !in_char && !escaped) {
    in_string = !in_string;
   } else if (*end == '\'' && !in_string && !escaped) {
    in_char = !in_char;
   } else if (*end == '[' && !in_string && !in_char && !in_brackets && !escaped) {
    in_brackets = 1;
   } else if (*end == ']' && !in_string && !in_char && in_brackets && !escaped) {
    in_brackets = 0;
   } else if (*end == '\\') {
    escaped = !escaped;
   } else if (*end == '\0' || (!in_string && !in_char && !in_brackets
      && !escaped && strchr(whitespace, *end))) {
    goto add_token;
   }
   if (*end != '\\') {
    escaped = 0;
   }
   ++end;
   continue;
   add_token:
   if (end - start > 0) {
    char *token = malloc(end - start + 1);
    strncpy(token, start, end - start + 1);
    token[end - start] = '\0';
    argv[*argc] = token;
    if (++*argc + 1 == alloc) {
     argv = realloc(argv, (alloc *= 2) * sizeof(char *));
    }
   }
   in_token = 0;
   escaped = 0;
  }
 }
 argv[*argc] = ((void*)0);
 return argv;
}
