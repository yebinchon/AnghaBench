
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {size_t size; size_t asize; struct buf** item; } ;
struct sd_markdown {struct stack* work_bufs; } ;
struct buf {scalar_t__ size; } ;


 struct buf* bufnew (size_t const) ;
 int redcarpet_stack_push (struct stack*,struct buf*) ;

__attribute__((used)) static inline struct buf *
rndr_newbuf(struct sd_markdown *rndr, int type)
{
 static const size_t buf_size[2] = {256, 64};
 struct buf *work = ((void*)0);
 struct stack *pool = &rndr->work_bufs[type];

 if (pool->size < pool->asize &&
  pool->item[pool->size] != ((void*)0)) {
  work = pool->item[pool->size++];
  work->size = 0;
 } else {
  work = bufnew(buf_size[type]);
  redcarpet_stack_push(pool, work);
 }

 return work;
}
