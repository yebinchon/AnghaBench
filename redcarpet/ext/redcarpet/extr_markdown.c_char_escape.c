
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int (* normal_text ) (struct buf*,struct buf*,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {int size; int * data; int member_3; int member_2; int member_1; int member_0; } ;


 int bufputc (struct buf*,int ) ;
 int * strchr (char const*,int ) ;
 int stub1 (struct buf*,struct buf*,int ) ;

__attribute__((used)) static size_t
char_escape(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t offset, size_t size)
{
 static const char *escape_chars = "\\`*_{}[]()#+-.!:|&<>^~=";
 struct buf work = { 0, 0, 0, 0 };

 if (size > 1) {
  if (strchr(escape_chars, data[1]) == ((void*)0))
   return 0;

  if (rndr->cb.normal_text) {
   work.data = data + 1;
   work.size = 1;
   rndr->cb.normal_text(ob, &work, rndr->opaque);
  }
  else bufputc(ob, data[1]);
 } else if (size == 1) {
  bufputc(ob, data[0]);
 }

 return 2;
}
