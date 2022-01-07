
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_table_entry {int type; int name; int maximum; int minimum; int * pattern; } ;
struct options_entry {int dummy; } ;
struct options {int dummy; } ;
struct cmdq_item {int dummy; } ;
struct cmd {struct args* args; } ;
struct args {int dummy; } ;
typedef long long key_code ;


 long long KEYC_UNKNOWN ;
 int args_has (struct args*,char) ;
 int cmd_set_option_choice (struct cmdq_item*,struct options_table_entry const*,struct options*,char const*) ;
 int cmd_set_option_flag (struct cmdq_item*,struct options_table_entry const*,struct options*,char const*) ;
 int cmdq_error (struct cmdq_item*,char*,...) ;
 long long colour_fromstring (char const*) ;
 int fnmatch (int *,char const*,int ) ;
 int free (char*) ;
 long long key_string_lookup_string (char const*) ;
 char* options_get_string (struct options*,int ) ;
 int options_set_number (struct options*,int ,long long) ;
 int options_set_string (struct options*,int ,int,char*,char const*) ;
 struct options_entry* options_set_style (struct options*,int ,int,char const*) ;
 struct options_table_entry* options_table_entry (struct options_entry*) ;
 long long strtonum (char const*,int ,int ,char const**) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int
cmd_set_option_set(struct cmd *self, struct cmdq_item *item, struct options *oo,
    struct options_entry *parent, const char *value)
{
 const struct options_table_entry *oe;
 struct args *args = self->args;
 int append = args_has(args, 'a');
 struct options_entry *o;
 long long number;
 const char *errstr, *new;
 char *old;
 key_code key;

 oe = options_table_entry(parent);
 if (value == ((void*)0) &&
     oe->type != 132 &&
     oe->type != 135) {
  cmdq_error(item, "empty value");
  return (-1);
 }

 switch (oe->type) {
 case 129:
  old = xstrdup(options_get_string(oo, oe->name));
  options_set_string(oo, oe->name, append, "%s", value);
  new = options_get_string(oo, oe->name);
  if (oe->pattern != ((void*)0) && fnmatch(oe->pattern, new, 0) != 0) {
   options_set_string(oo, oe->name, 0, "%s", old);
   free(old);
   cmdq_error(item, "value is invalid: %s", value);
   return (-1);
  }
  free(old);
  return (0);
 case 130:
  number = strtonum(value, oe->minimum, oe->maximum, &errstr);
  if (errstr != ((void*)0)) {
   cmdq_error(item, "value is %s: %s", errstr, value);
   return (-1);
  }
  options_set_number(oo, oe->name, number);
  return (0);
 case 131:
  key = key_string_lookup_string(value);
  if (key == KEYC_UNKNOWN) {
   cmdq_error(item, "bad key: %s", value);
   return (-1);
  }
  options_set_number(oo, oe->name, key);
  return (0);
 case 134:
  if ((number = colour_fromstring(value)) == -1) {
   cmdq_error(item, "bad colour: %s", value);
   return (-1);
  }
  options_set_number(oo, oe->name, number);
  return (0);
 case 132:
  return (cmd_set_option_flag(item, oe, oo, value));
 case 135:
  return (cmd_set_option_choice(item, oe, oo, value));
 case 128:
  o = options_set_style(oo, oe->name, append, value);
  if (o == ((void*)0)) {
   cmdq_error(item, "bad style: %s", value);
   return (-1);
  }
  return (0);
 case 133:
  break;
 }
 return (-1);
}
