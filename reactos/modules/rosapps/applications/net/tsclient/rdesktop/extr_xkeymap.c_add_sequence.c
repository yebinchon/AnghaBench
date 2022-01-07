
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t seq_keysym; struct TYPE_8__* next; } ;
typedef TYPE_2__ key_translation ;
struct TYPE_7__ {TYPE_2__** keymap; } ;
struct TYPE_9__ {TYPE_1__ xkeymap; } ;
typedef TYPE_3__ RDPCLIENT ;
typedef size_t KeySym ;


 int DEBUG_KBD (char*) ;
 size_t KEYMAP_MASK ;
 int KEYMAP_MAX_LINE_LENGTH ;
 size_t NoSymbol ;
 int STRNCPY (char*,char*,size_t) ;
 size_t XStringToKeysym (char*) ;
 int free_key_translation (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 size_t strcspn (char*,char*) ;
 size_t strspn (char*,char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
add_sequence(RDPCLIENT * This, char *rest, char *mapname)
{
 KeySym keysym;
 key_translation *tr, **prev_next;
 size_t chars;
 char keyname[KEYMAP_MAX_LINE_LENGTH];


 chars = strspn(rest, " \t");
 rest += chars;


 chars = strcspn(rest, " \t\0");
 STRNCPY(keyname, rest, chars + 1);
 rest += chars;

 keysym = XStringToKeysym(keyname);
 if (keysym == NoSymbol)
 {
  DEBUG_KBD(("Bad keysym \"%s\" in keymap %s (ignoring line)\n", keyname, mapname));
  return;
 }


 DEBUG_KBD(("Adding sequence for keysym (0x%lx, %s) -> ", keysym, keyname));

 free_key_translation(This->xkeymap.keymap[keysym & KEYMAP_MASK]);
 prev_next = &This->xkeymap.keymap[keysym & KEYMAP_MASK];

 while (*rest)
 {

  chars = strspn(rest, " \t");
  rest += chars;


  chars = strcspn(rest, " \t\0");
  STRNCPY(keyname, rest, chars + 1);
  rest += chars;

  keysym = XStringToKeysym(keyname);
  if (keysym == NoSymbol)
  {
   DEBUG_KBD(("Bad keysym \"%s\" in keymap %s (ignoring line)\n", keyname,
       mapname));
   return;
  }


  tr = (key_translation *) xmalloc(sizeof(key_translation));
  memset(tr, 0, sizeof(key_translation));
  *prev_next = tr;
  prev_next = &tr->next;
  tr->seq_keysym = keysym;

  DEBUG_KBD(("0x%x, ", (unsigned int) keysym));
 }
 DEBUG_KBD(("\n"));
}
