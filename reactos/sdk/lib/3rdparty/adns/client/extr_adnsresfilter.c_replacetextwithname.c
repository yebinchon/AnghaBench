
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct outqueuenode {char* buffer; char* textp; int textlen; TYPE_3__* addr; } ;
struct TYPE_6__ {TYPE_2__* ans; } ;
struct TYPE_4__ {char** str; } ;
struct TYPE_5__ {TYPE_1__ rrs; } ;


 int address ;
 scalar_t__ bracket ;
 int free (char*) ;
 int sprintf (char*,char*,char*,int,char*) ;
 int strlen (char*) ;
 char* xmalloc (int) ;

__attribute__((used)) static void replacetextwithname(struct outqueuenode *entry) {
  char *name, *newbuf;
  int namelen, newlen;

  name= entry->addr->ans->rrs.str[0];
  namelen= strlen(name);
  if (!address) {
    free(entry->buffer);
    entry->buffer= 0;
    entry->textp= name;
    entry->textlen= namelen;
  } else {
    newlen= entry->textlen + namelen + (bracket ? 0 : 2);
    newbuf= xmalloc(newlen + 1);
    sprintf(newbuf, bracket ? "%s%.*s" : "%s[%.*s]", name, entry->textlen, entry->textp);
    free(entry->buffer);
    entry->buffer= entry->textp= newbuf;
    entry->textlen= newlen;
  }
}
