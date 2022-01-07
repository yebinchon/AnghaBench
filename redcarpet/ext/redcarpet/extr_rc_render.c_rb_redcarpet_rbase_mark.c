
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ link_attributes; } ;
struct rb_redcarpet_rndr {TYPE_1__ options; } ;


 int rb_gc_mark (scalar_t__) ;

__attribute__((used)) static void rb_redcarpet_rbase_mark(struct rb_redcarpet_rndr *rndr)
{
 if (rndr->options.link_attributes)
  rb_gc_mark(rndr->options.link_attributes);
}
