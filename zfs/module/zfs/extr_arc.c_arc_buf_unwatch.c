
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_data; } ;
typedef TYPE_1__ arc_buf_t ;


 int ASSERT0 (int ) ;
 int PROT_READ ;
 int PROT_WRITE ;
 int arc_buf_size (TYPE_1__*) ;
 scalar_t__ arc_watch ;
 int mprotect (int ,int ,int) ;

__attribute__((used)) static void
arc_buf_unwatch(arc_buf_t *buf)
{

 if (arc_watch) {
  ASSERT0(mprotect(buf->b_data, arc_buf_size(buf),
      PROT_READ | PROT_WRITE));
 }

}
