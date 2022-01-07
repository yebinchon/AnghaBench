
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;
typedef int VALUE ;


 int BLOCK_CALLBACK (char*,int,int ,int ) ;
 int CSTR2SYM (char*) ;



 int Qnil ;
 int buf2str (struct buf const*) ;

__attribute__((used)) static void
rndr_tablecell(struct buf *ob, const struct buf *text, int align, void *opaque)
{
 VALUE rb_align;

 switch (align) {
 case 129:
  rb_align = CSTR2SYM("left");
  break;

 case 128:
  rb_align = CSTR2SYM("right");
  break;

 case 130:
  rb_align = CSTR2SYM("center");
  break;

 default:
  rb_align = Qnil;
  break;
 }

 BLOCK_CALLBACK("table_cell", 2, buf2str(text), rb_align);
}
