
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_4__ {int pos; char* data; int size; struct TYPE_4__* next; } ;
typedef TYPE_1__ CHANGE ;
typedef int BOOLEAN ;


 int FSCHECK_IMMEDIATE_WRITE ;
 int FsCheckFlags ;
 void* alloc (size_t const) ;
 int assert (int) ;
 TYPE_1__* changes ;
 int did_change ;
 int die (char*,int,int,long long) ;
 int fd ;
 int free (void*) ;
 scalar_t__ interactive ;
 TYPE_1__* last ;
 int lseek (int ,int const,int ) ;
 int memcpy (char*,void*,int) ;
 int pdie (char*,int const,...) ;
 scalar_t__ read (int ,void*,size_t const) ;
 scalar_t__ rw ;
 int write (int ,void*,size_t const) ;
 scalar_t__ write_immed ;

void fs_write(off_t pos, int size, void *data)
{
    CHANGE *new;
    int did;
    if (write_immed) {
 did_change = 1;
 if (lseek(fd, pos, 0) != pos)
     pdie("Seek to %lld", (long long)pos);
 if ((did = write(fd, data, size)) == size)
     return;
 if (did < 0)
     pdie("Write %d bytes at %lld", size, (long long)pos);
 die("Wrote %d bytes instead of %d at %lld", did, size, (long long)pos);
    }

    new = alloc(sizeof(CHANGE));
    new->pos = pos;
    memcpy(new->data = alloc(new->size = size), data, size);
    new->next = ((void*)0);
    if (last)
 last->next = new;
    else
 changes = new;
    last = new;
}
