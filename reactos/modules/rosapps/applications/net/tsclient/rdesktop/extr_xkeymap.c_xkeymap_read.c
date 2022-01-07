
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint8 ;
typedef scalar_t__ uint16 ;
typedef int line ;
struct TYPE_5__ {void* keyboard_functionkeys; void* keyboard_subtype; void* keyboard_type; void* enable_compose; int keylayout; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef int FILE ;
typedef void* BOOL ;


 int DEBUG_KBD (char*) ;
 void* False ;
 int KEYMAP_MAX_LINE_LENGTH ;
 int MASK_ADD_BITS (scalar_t__,int ) ;
 int MapAltGrMask ;
 int MapInhibitMask ;
 int MapLeftShiftMask ;
 int MapLocalStateMask ;
 int MapNumLockMask ;
 void* True ;
 int add_sequence (TYPE_1__*,char*,char*) ;
 int add_to_keymap (TYPE_1__*,char*,void*,scalar_t__,char*) ;
 int error (char*,...) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 scalar_t__ str_startswith (char*,char*) ;
 char* strchr (char*,char) ;
 unsigned int strlen (char*) ;
 unsigned int strspn (char*,char*) ;
 scalar_t__ strstr (char*,char*) ;
 void* strtol (char*,char**,int) ;
 int strtoul (char*,int *,int) ;
 char toupper (int) ;
 int * xkeymap_open (char*) ;

__attribute__((used)) static BOOL
xkeymap_read(RDPCLIENT * This, char *mapname)
{
 FILE *fp;
 char line[KEYMAP_MAX_LINE_LENGTH];
 unsigned int line_num = 0;
 unsigned int line_length = 0;
 char *keyname, *p;
 char *line_rest;
 uint8 scancode;
 uint16 modifiers;

 fp = xkeymap_open(mapname);
 if (fp == ((void*)0))
 {
  error("Failed to open keymap %s\n", mapname);
  return False;
 }


 while (fgets(line, sizeof(line), fp) != ((void*)0))
 {
  line_num++;


  p = strchr(line, '\n');
  if (p != ((void*)0))
   *p = 0;

  line_length = strlen(line);


  if (strspn(line, " \t\n\r\f\v") == line_length)
  {
   continue;
  }


  if (str_startswith(line, "include "))
  {
   if (!xkeymap_read(This, line + sizeof("include ") - 1))
    return False;
   continue;
  }


  if (str_startswith(line, "map "))
  {
   This->keylayout = strtoul(line + sizeof("map ") - 1, ((void*)0), 16);
   DEBUG_KBD(("Keylayout 0x%x\n", This->keylayout));
   continue;
  }


  if (str_startswith(line, "enable_compose"))
  {
   DEBUG_KBD(("Enabling compose handling\n"));
   This->enable_compose = True;
   continue;
  }


  if (str_startswith(line, "sequence"))
  {
   add_sequence(This, line + sizeof("sequence") - 1, mapname);
   continue;
  }


  if (str_startswith(line, "keyboard_type "))
  {
   This->keyboard_type = strtol(line + sizeof("keyboard_type ") - 1, ((void*)0), 16);
   DEBUG_KBD(("keyboard_type 0x%x\n", This->keyboard_type));
   continue;
  }


  if (str_startswith(line, "keyboard_subtype "))
  {
   This->keyboard_subtype =
    strtol(line + sizeof("keyboard_subtype ") - 1, ((void*)0), 16);
   DEBUG_KBD(("keyboard_subtype 0x%x\n", This->keyboard_subtype));
   continue;
  }


  if (str_startswith(line, "keyboard_functionkeys "))
  {
   This->keyboard_functionkeys =
    strtol(line + sizeof("keyboard_functionkeys ") - 1, ((void*)0), 16);
   DEBUG_KBD(("keyboard_functionkeys 0x%x\n", This->keyboard_functionkeys));
   continue;
  }


  if (line[0] == '#')
  {
   continue;
  }


  keyname = line;
  p = strchr(line, ' ');
  if (p == ((void*)0))
  {
   error("Bad line %d in keymap %s\n", line_num, mapname);
   continue;
  }
  else
  {
   *p = 0;
  }


  p++;
  scancode = strtol(p, &line_rest, 16);




  modifiers = 0;
  if (strstr(line_rest, "altgr"))
  {
   MASK_ADD_BITS(modifiers, MapAltGrMask);
  }

  if (strstr(line_rest, "shift"))
  {
   MASK_ADD_BITS(modifiers, MapLeftShiftMask);
  }

  if (strstr(line_rest, "numlock"))
  {
   MASK_ADD_BITS(modifiers, MapNumLockMask);
  }

  if (strstr(line_rest, "localstate"))
  {
   MASK_ADD_BITS(modifiers, MapLocalStateMask);
  }

  if (strstr(line_rest, "inhibit"))
  {
   MASK_ADD_BITS(modifiers, MapInhibitMask);
  }

  add_to_keymap(This, keyname, scancode, modifiers, mapname);

  if (strstr(line_rest, "addupper"))
  {


   for (p = keyname; *p; p++)
    *p = toupper((int) *p);
   MASK_ADD_BITS(modifiers, MapLeftShiftMask);
   add_to_keymap(This, keyname, scancode, modifiers, mapname);
  }
 }

 fclose(fp);
 return True;
}
