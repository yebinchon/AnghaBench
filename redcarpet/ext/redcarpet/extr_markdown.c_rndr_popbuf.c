
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd_markdown {TYPE_1__* work_bufs; } ;
struct TYPE_2__ {int size; } ;



__attribute__((used)) static inline void
rndr_popbuf(struct sd_markdown *rndr, int type)
{
 rndr->work_bufs[type].size--;
}
