
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_8__ {int modifiers; int scancode; } ;
typedef TYPE_2__ key_translation ;
struct TYPE_7__ {TYPE_2__** keymap; } ;
struct TYPE_9__ {TYPE_1__ xkeymap; } ;
typedef TYPE_3__ RDPCLIENT ;
typedef size_t KeySym ;


 int DEBUG_KBD (char*) ;
 size_t KEYMAP_MASK ;
 size_t NoSymbol ;
 size_t XStringToKeysym (char*) ;
 int free_key_translation (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
add_to_keymap(RDPCLIENT * This, char *keyname, uint8 scancode, uint16 modifiers, char *mapname)
{
 KeySym keysym;
 key_translation *tr;

 keysym = XStringToKeysym(keyname);
 if (keysym == NoSymbol)
 {
  DEBUG_KBD(("Bad keysym \"%s\" in keymap %s (ignoring)\n", keyname, mapname));
  return;
 }

 DEBUG_KBD(("Adding translation, keysym=0x%x, scancode=0x%x, "
     "modifiers=0x%x\n", (unsigned int) keysym, scancode, modifiers));

 tr = (key_translation *) xmalloc(sizeof(key_translation));
 memset(tr, 0, sizeof(key_translation));
 tr->scancode = scancode;
 tr->modifiers = modifiers;
 free_key_translation(This->xkeymap.keymap[keysym & KEYMAP_MASK]);
 This->xkeymap.keymap[keysym & KEYMAP_MASK] = tr;

 return;
}
