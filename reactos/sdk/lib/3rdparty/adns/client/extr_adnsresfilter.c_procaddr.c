
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct treething {scalar_t__ qu; int * bytes; scalar_t__ ans; } ;
struct sockaddr {int dummy; } ;
struct outqueuenode {int textlen; int printbefore; struct treething* addr; int * textp; int * buffer; } ;
struct TYPE_2__ {int sin_addr; } ;


 int LIST_LINK_TAIL (int ,struct outqueuenode*) ;
 int addrtextbuf ;
 int adns_submit_reverse (int ,struct sockaddr const*,int ,int ,struct treething*,scalar_t__*) ;
 int adnsfail (char*,int) ;
 int ads ;
 int bytes ;
 int cbyte ;
 int comparer ;
 int inbuf ;
 int memcpy (int *,int ,int) ;
 struct treething* newthing ;
 int outqueue ;
 int outqueuelen ;
 int printbefore ;
 int rrt ;
 TYPE_1__ sa ;
 int sysfail (char*) ;
 int treeroot ;
 void** tsearch (struct treething*,int *,int ) ;
 void* xmalloc (int) ;

__attribute__((used)) static void procaddr(void) {
  struct treething *foundthing;
  void **searchfound;
  struct outqueuenode *entry;
  int r;

  if (!newthing) {
    newthing= xmalloc(sizeof(struct treething));
    newthing->qu= 0;
    newthing->ans= 0;
  }

  memcpy(newthing->bytes,bytes,4);
  searchfound= tsearch(newthing,&treeroot,comparer);
  if (!searchfound) sysfail("tsearch");
  foundthing= *searchfound;

  if (foundthing == newthing) {
    newthing= 0;
    memcpy(&sa.sin_addr,bytes,4);
    r= adns_submit_reverse(ads, (const struct sockaddr*)&sa,
      rrt,0,foundthing,&foundthing->qu);
    if (r) adnsfail("submit",r);
  }
  entry= xmalloc(sizeof(*entry));
  entry->buffer= xmalloc(inbuf);
  entry->textp= entry->buffer;
  memcpy(entry->textp,addrtextbuf,inbuf);
  entry->textlen= inbuf;
  entry->addr= foundthing;
  entry->printbefore= printbefore;
  LIST_LINK_TAIL(outqueue,entry);
  outqueuelen++;
  inbuf= 0;
  cbyte= -1;
}
