
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_3__ {scalar_t__ data; int len; } ;
typedef TYPE_1__ DwarfBlock ;


 int free (scalar_t__) ;
 scalar_t__ malloc (int ) ;
 scalar_t__ nil ;
 int readn (void*,char*,int ) ;
 int seek (void*,int ,int ) ;

__attribute__((used)) static int
readblock(void *fd, DwarfBlock *b, ulong off, ulong len)
{
 b->data = malloc(len);
 if(b->data == nil)
  return -1;
 if(!seek(fd, off, 0) || !readn(fd, (char *)b->data, len)){
  free(b->data);
  b->data = nil;
  return -1;
 }
 b->len = len;
 return 0;
}
