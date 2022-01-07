
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; struct TYPE_4__* next; } ;
typedef TYPE_1__ CHANGE ;


 TYPE_1__* changes ;
 scalar_t__ close (int ) ;
 scalar_t__ did_change ;
 int fd ;
 int free (TYPE_1__*) ;
 int fs_flush () ;
 int pdie (char*) ;

int fs_close(int write)
{
    CHANGE *next;
    int changed;

    changed = ! !changes;
    if (write)
 fs_flush();
    else
 while (changes) {
     next = changes->next;
     free(changes->data);
     free(changes);
     changes = next;
 }
    if (close(fd) < 0)
 pdie("closing filesystem");
    return changed || did_change;
}
