
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union options_value {size_t number; char* string; int style; int cmdlist; } ;
struct options_entry {TYPE_1__* tableentry; } ;
struct TYPE_2__ {int type; char** choices; } ;


 scalar_t__ OPTIONS_IS_COMMAND (struct options_entry*) ;
 scalar_t__ OPTIONS_IS_NUMBER (struct options_entry*) ;
 scalar_t__ OPTIONS_IS_STRING (struct options_entry*) ;
 scalar_t__ OPTIONS_IS_STYLE (struct options_entry*) ;
 char* cmd_list_print (int ,int ) ;
 char* colour_tostring (size_t) ;
 int fatalx (char*) ;
 char* key_string_lookup_key (size_t) ;
 char* style_tostring (int *) ;
 int xasprintf (char**,char*,size_t) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
options_value_tostring(struct options_entry *o, union options_value *ov,
    int numeric)
{
 char *s;

 if (OPTIONS_IS_COMMAND(o))
  return (cmd_list_print(ov->cmdlist, 0));
 if (OPTIONS_IS_STYLE(o))
  return (xstrdup(style_tostring(&ov->style)));
 if (OPTIONS_IS_NUMBER(o)) {
  switch (o->tableentry->type) {
  case 130:
   xasprintf(&s, "%lld", ov->number);
   break;
  case 131:
   s = xstrdup(key_string_lookup_key(ov->number));
   break;
  case 134:
   s = xstrdup(colour_tostring(ov->number));
   break;
  case 132:
   if (numeric)
    xasprintf(&s, "%lld", ov->number);
   else
    s = xstrdup(ov->number ? "on" : "off");
   break;
  case 135:
   s = xstrdup(o->tableentry->choices[ov->number]);
   break;
  case 129:
  case 128:
  case 133:
   fatalx("not a number option type");
  }
  return (s);
 }
 if (OPTIONS_IS_STRING(o))
  return (xstrdup(ov->string));
 return (xstrdup(""));
}
