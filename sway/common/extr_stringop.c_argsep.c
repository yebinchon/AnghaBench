
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* argsep_next_interesting (char*,char const*) ;

char *argsep(char **stringp, const char *delim, char *matched) {
 char *start = *stringp;
 char *end = start;
 bool in_string = 0;
 bool in_char = 0;
 bool escaped = 0;
 char *interesting = ((void*)0);

 while ((interesting = argsep_next_interesting(end, delim))) {
  if (escaped && interesting != end) {
   escaped = 0;
  }
  if (*interesting == '"' && !in_char && !escaped) {
   in_string = !in_string;
   end = interesting + 1;
  } else if (*interesting == '\'' && !in_string && !escaped) {
   in_char = !in_char;
   end = interesting + 1;
  } else if (*interesting == '\\') {
   escaped = !escaped;
   end = interesting + 1;
  } else if (!in_string && !in_char && !escaped) {

   end = interesting;
   if (matched) {
    *matched = *end;
   }
   if (end - start) {
    *(end++) = 0;
    *stringp = end;
    break;
   } else {
    end = ++start;
   }
  } else {
   end++;
  }
 }
 if (!interesting) {
  *stringp = ((void*)0);
  if (matched) {
   *matched = '\0';
  }
 }
 return start;
}
