
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* storage; struct TYPE_4__* next; } ;
typedef TYPE_1__ stbds_string_block ;
struct TYPE_5__ {size_t remaining; size_t block; TYPE_1__* storage; } ;
typedef TYPE_2__ stbds_string_arena ;


 int STBDS_ASSERT (int) ;
 scalar_t__ STBDS_REALLOC (int *,int ,int) ;
 scalar_t__ STBDS_STRING_ARENA_BLOCKSIZE_MAX ;
 scalar_t__ STBDS_STRING_ARENA_BLOCKSIZE_MIN ;
 int memmove (char*,char*,size_t) ;
 int strlen (char*) ;

char *stbds_stralloc(stbds_string_arena *a, char *str)
{
  char *p;
  size_t len = strlen(str)+1;
  if (len > a->remaining) {

    size_t blocksize = a->block;



    blocksize = (size_t) (STBDS_STRING_ARENA_BLOCKSIZE_MIN) << (blocksize>>1);


    if (blocksize < (size_t)(STBDS_STRING_ARENA_BLOCKSIZE_MAX))
      ++a->block;

    if (len > blocksize) {




      stbds_string_block *sb = (stbds_string_block *) STBDS_REALLOC(((void*)0), 0, sizeof(*sb)-8 + len);
      memmove(sb->storage, str, len);
      if (a->storage) {

        sb->next = a->storage->next;
        a->storage->next = sb;
      } else {
        sb->next = 0;
        a->storage = sb;
        a->remaining = 0;
      }
      return sb->storage;
    } else {
      stbds_string_block *sb = (stbds_string_block *) STBDS_REALLOC(((void*)0), 0, sizeof(*sb)-8 + blocksize);
      sb->next = a->storage;
      a->storage = sb;
      a->remaining = blocksize;
    }
  }

  STBDS_ASSERT(len <= a->remaining);
  p = a->storage->storage + a->remaining - len;
  a->remaining -= len;
  memmove(p, str, len);
  return p;
}
