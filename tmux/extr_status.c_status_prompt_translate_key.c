
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {scalar_t__ prompt_mode; int flags; } ;
typedef int key_code ;


 int CLIENT_REDRAWSTATUS ;




 char KEYC_ESCAPE ;




 scalar_t__ PROMPT_COMMAND ;
 scalar_t__ PROMPT_ENTRY ;

__attribute__((used)) static int
status_prompt_translate_key(struct client *c, key_code key, key_code *new_key)
{
 if (c->prompt_mode == PROMPT_ENTRY) {
  switch (key) {
  case '\003':
  case '\010':
  case '\011':
  case '\025':
  case '\027':
  case '\n':
  case '\r':
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
  case 128:
   *new_key = key;
   return (1);
  case '\033':
   c->prompt_mode = PROMPT_COMMAND;
   c->flags |= CLIENT_REDRAWSTATUS;
   return (0);
  }
  *new_key = key;
  return (2);
 }

 switch (key) {
 case 'A':
 case 'I':
 case 'C':
 case 's':
 case 'a':
  c->prompt_mode = PROMPT_ENTRY;
  c->flags |= CLIENT_REDRAWSTATUS;
  break;
 case 'S':
  c->prompt_mode = PROMPT_ENTRY;
  c->flags |= CLIENT_REDRAWSTATUS;
  *new_key = '\025';
  return (1);
 case 'i':
 case '\033':
  c->prompt_mode = PROMPT_ENTRY;
  c->flags |= CLIENT_REDRAWSTATUS;
  return (0);
 }

 switch (key) {
 case 'A':
 case '$':
  *new_key = 132;
  return (1);
 case 'I':
 case '0':
 case '^':
  *new_key = 131;
  return (1);
 case 'C':
 case 'D':
  *new_key = '\013';
  return (1);
 case 135:
 case 'X':
  *new_key = 135;
  return (1);
 case 'b':
 case 'B':
  *new_key = 'b'|KEYC_ESCAPE;
  return (1);
 case 'd':
  *new_key = '\025';
  return (1);
 case 'e':
 case 'E':
 case 'w':
 case 'W':
  *new_key = 'f'|KEYC_ESCAPE;
  return (1);
 case 'p':
  *new_key = '\031';
  return (1);
 case 's':
 case 134:
 case 'x':
  *new_key = 134;
  return (1);
 case 133:
 case 'j':
  *new_key = 133;
  return (1);
 case 130:
 case 'h':
  *new_key = 130;
  return (1);
 case 'a':
 case 129:
 case 'l':
  *new_key = 129;
  return (1);
 case 128:
 case 'k':
  *new_key = 128;
  return (1);
 case '\010' :
 case '\003' :
 case '\n':
 case '\r':
  return (1);
 }
 return (0);
}
