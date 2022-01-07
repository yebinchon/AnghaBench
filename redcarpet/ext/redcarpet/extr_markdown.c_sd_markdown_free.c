
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd_markdown {TYPE_1__* work_bufs; } ;
struct TYPE_2__ {int * item; scalar_t__ asize; } ;


 size_t BUFFER_BLOCK ;
 size_t BUFFER_SPAN ;
 int bufrelease (int ) ;
 int free (struct sd_markdown*) ;
 int redcarpet_stack_free (TYPE_1__*) ;

void
sd_markdown_free(struct sd_markdown *md)
{
 size_t i;

 for (i = 0; i < (size_t)md->work_bufs[BUFFER_SPAN].asize; ++i)
  bufrelease(md->work_bufs[BUFFER_SPAN].item[i]);

 for (i = 0; i < (size_t)md->work_bufs[BUFFER_BLOCK].asize; ++i)
  bufrelease(md->work_bufs[BUFFER_BLOCK].item[i]);

 redcarpet_stack_free(&md->work_bufs[BUFFER_SPAN]);
 redcarpet_stack_free(&md->work_bufs[BUFFER_BLOCK]);

 free(md);
}
