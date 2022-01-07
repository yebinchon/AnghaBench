
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* footnotes ) (struct buf*,struct buf*,int ) ;} ;
struct sd_markdown {int opaque; TYPE_2__ cb; } ;
struct footnote_ref {TYPE_1__* contents; int num; } ;
struct footnote_list {scalar_t__ count; struct footnote_item* head; } ;
struct footnote_item {struct footnote_item* next; struct footnote_ref* ref; } ;
struct buf {int dummy; } ;
struct TYPE_3__ {int size; int data; } ;


 int BUFFER_BLOCK ;
 int parse_footnote_def (struct buf*,struct sd_markdown*,int ,int ,int ) ;
 struct buf* rndr_newbuf (struct sd_markdown*,int ) ;
 int rndr_popbuf (struct sd_markdown*,int ) ;
 int stub1 (struct buf*,struct buf*,int ) ;

__attribute__((used)) static void
parse_footnote_list(struct buf *ob, struct sd_markdown *rndr, struct footnote_list *footnotes)
{
 struct buf *work = 0;
 struct footnote_item *item;
 struct footnote_ref *ref;

 if (footnotes->count == 0)
  return;

 work = rndr_newbuf(rndr, BUFFER_BLOCK);

 item = footnotes->head;
 while (item) {
  ref = item->ref;
  parse_footnote_def(work, rndr, ref->num, ref->contents->data, ref->contents->size);
  item = item->next;
 }

 if (rndr->cb.footnotes)
  rndr->cb.footnotes(ob, work, rndr->opaque);
 rndr_popbuf(rndr, BUFFER_BLOCK);
}
