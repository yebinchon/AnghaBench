
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct tty_term_code_entry {int type; int name; } ;
struct tty_term {struct tty_code* codes; int name; } ;
struct TYPE_2__ {char* string; int number; int flag; } ;
struct tty_code {int type; TYPE_1__ value; } ;


 int INT_MAX ;




 scalar_t__ fnmatch (char*,int ,int ) ;
 int free (char*) ;
 int log_debug (char*,int ,char*,...) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 int strtonum (char*,int ,int ,char const**) ;
 int strunvis (char*,char*) ;
 struct tty_term_code_entry* tty_term_codes ;
 size_t tty_term_ncodes () ;
 char* tty_term_override_next (char const*,size_t*) ;
 void* xstrdup (char*) ;

__attribute__((used)) static void
tty_term_override(struct tty_term *term, const char *override)
{
 const struct tty_term_code_entry *ent;
 struct tty_code *code;
 size_t offset = 0;
 char *cp, *value, *s;
 const char *errstr;
 u_int i;
 int n, remove;

 s = tty_term_override_next(override, &offset);
 if (s == ((void*)0) || fnmatch(s, term->name, 0) != 0)
  return;

 while ((s = tty_term_override_next(override, &offset)) != ((void*)0)) {
  if (*s == '\0')
   continue;
  value = ((void*)0);

  remove = 0;
  if ((cp = strchr(s, '=')) != ((void*)0)) {
   *cp++ = '\0';
   value = xstrdup(cp);
   if (strunvis(value, cp) == -1) {
    free(value);
    value = xstrdup(cp);
   }
  } else if (s[strlen(s) - 1] == '@') {
   s[strlen(s) - 1] = '\0';
   remove = 1;
  } else
   value = xstrdup("");

  if (remove)
   log_debug("%s override: %s@", term->name, s);
  else if (*value == '\0')
   log_debug("%s override: %s", term->name, s);
  else
   log_debug("%s override: %s=%s", term->name, s, value);

  for (i = 0; i < tty_term_ncodes(); i++) {
   ent = &tty_term_codes[i];
   if (strcmp(s, ent->name) != 0)
    continue;
   code = &term->codes[i];

   if (remove) {
    code->type = 130;
    continue;
   }
   switch (ent->type) {
   case 130:
    break;
   case 128:
    if (code->type == 128)
     free(code->value.string);
    code->value.string = xstrdup(value);
    code->type = ent->type;
    break;
   case 129:
    n = strtonum(value, 0, INT_MAX, &errstr);
    if (errstr != ((void*)0))
     break;
    code->value.number = n;
    code->type = ent->type;
    break;
   case 131:
    code->value.flag = 1;
    code->type = ent->type;
    break;
   }
  }

  free(value);
 }
}
