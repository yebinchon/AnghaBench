
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outqueuenode {int textlen; int textp; struct outqueuenode* buffer; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int LIST_UNLINK (int ,struct outqueuenode*) ;
 int assert (int) ;
 scalar_t__ errno ;
 int free (struct outqueuenode*) ;
 int outblocked ;
 int outqueue ;
 int outqueuelen ;
 int sysfail (char*) ;
 int write (int,int,int) ;

__attribute__((used)) static void writestdout(struct outqueuenode *entry) {
  int r;

  while (entry->textlen) {
    r= write(1, entry->textp, entry->textlen);
    if (r < 0) {
      if (errno == EINTR) continue;
      if (errno == EAGAIN) { outblocked= 1; break; }
      sysfail("write stdout");
    }
    assert(r <= entry->textlen);
    entry->textp += r;
    entry->textlen -= r;
  }
  if (!entry->textlen) {
    LIST_UNLINK(outqueue,entry);
    free(entry->buffer);
    free(entry);
    outqueuelen--;
  }
}
