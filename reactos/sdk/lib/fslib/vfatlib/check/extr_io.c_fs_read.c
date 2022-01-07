
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int pos; int size; scalar_t__ data; struct TYPE_3__* next; } ;
typedef TYPE_1__ CHANGE ;


 char* alloc (size_t const) ;
 int assert (int) ;
 TYPE_1__* changes ;
 int die (char*,int,int,long long) ;
 int fd ;
 int free (char*) ;
 int lseek (int ,int const,int ) ;
 int memcpy (char*,char*,int) ;
 int min (int,int) ;
 int pdie (char*,int,...) ;
 int read (int ,void*,size_t const) ;

void fs_read(off_t pos, int size, void *data)
{
    CHANGE *walk;
    int got;
    if (lseek(fd, pos, 0) != pos)
 pdie("Seek to %lld", (long long)pos);
    if ((got = read(fd, data, size)) < 0)
 pdie("Read %d bytes at %lld", size, (long long)pos);

    if (got != size)
 die("Got %d bytes instead of %d at %lld", got, size, (long long)pos);
    for (walk = changes; walk; walk = walk->next) {
 if (walk->pos < pos + size && walk->pos + walk->size > pos) {
     if (walk->pos < pos)
  memcpy(data, (char *)walk->data + pos - walk->pos,
         min(size, walk->size - pos + walk->pos));
     else
  memcpy((char *)data + walk->pos - pos, walk->data,
         min(walk->size, size + pos - walk->pos));
 }
    }
}
