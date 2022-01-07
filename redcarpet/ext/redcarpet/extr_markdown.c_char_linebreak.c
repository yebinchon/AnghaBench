
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_2__ {scalar_t__ (* linebreak ) (struct buf*,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {int size; char* data; } ;


 scalar_t__ stub1 (struct buf*,int ) ;

__attribute__((used)) static size_t
char_linebreak(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t offset, size_t size)
{
 if (offset < 2 || data[-1] != ' ' || data[-2] != ' ')
  return 0;


 while (ob->size && ob->data[ob->size - 1] == ' ')
  ob->size--;

 return rndr->cb.linebreak(ob, rndr->opaque) ? 1 : 0;
}
