
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_2__ {int (* entity ) (struct buf*,struct buf*,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {char* data; size_t size; int member_3; int member_2; int member_1; int member_0; } ;


 scalar_t__ _isalnum (char) ;
 int bufput (struct buf*,char*,size_t) ;
 int stub1 (struct buf*,struct buf*,int ) ;

__attribute__((used)) static size_t
char_entity(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t offset, size_t size)
{
 size_t end = 1;
 struct buf work = { 0, 0, 0, 0 };

 if (end < size && data[end] == '#')
  end++;

 while (end < size && _isalnum(data[end]))
  end++;

 if (end < size && data[end] == ';')
  end++;
 else
  return 0;

 if (rndr->cb.entity) {
  work.data = data;
  work.size = end;
  rndr->cb.entity(ob, &work, rndr->opaque);
 }
 else bufput(ob, data, end);

 return end;
}
