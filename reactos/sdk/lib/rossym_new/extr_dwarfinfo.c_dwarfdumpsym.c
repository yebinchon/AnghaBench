
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int haveoff; int off; int namestr; scalar_t__ name; } ;
struct TYPE_7__ {int tag; } ;
struct TYPE_10__ {TYPE_1__ attrs; } ;
struct TYPE_8__ {int len; int data; } ;
struct TYPE_9__ {TYPE_2__ b; } ;
typedef TYPE_3__ DwarfVal ;
typedef TYPE_4__ DwarfSym ;
typedef int Dwarf ;


 char TReference ;
 char TString ;
 TYPE_5__* plist ;
 int werrstr (char*,int ,...) ;

void
dwarfdumpsym(Dwarf *d, DwarfSym *s)
{
    int j;
    werrstr("tag %x\n", s->attrs.tag);
    for (j = 0; plist[j].name; j++) {
        char *have = ((char*)&s->attrs) + plist[j].haveoff;
        char *attr = ((char*)&s->attrs) + plist[j].off;
        if (*have == TString) {
            char *str = *((char **)attr);
            werrstr("%s: %s\n", plist[j].namestr, str);
        } else if (*have == TReference) {
            DwarfVal *val = ((DwarfVal*)attr);
            werrstr("%s: %x:%x\n", plist[j].namestr, val->b.data, val->b.len);
        } else if (*have)
            werrstr("%s: (%x)\n", plist[j].namestr, *have);
    }
}
