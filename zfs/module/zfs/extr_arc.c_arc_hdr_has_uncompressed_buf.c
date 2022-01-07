
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_8__ {struct TYPE_8__* b_next; } ;
typedef TYPE_2__ arc_buf_t ;
struct TYPE_7__ {scalar_t__ b_state; TYPE_2__* b_buf; } ;
struct TYPE_9__ {TYPE_1__ b_l1hdr; } ;
typedef TYPE_3__ arc_buf_hdr_t ;


 int ARC_BUF_COMPRESSED (TYPE_2__*) ;
 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ HDR_EMPTY_OR_LOCKED (TYPE_3__*) ;
 scalar_t__ arc_anon ;

__attribute__((used)) static boolean_t
arc_hdr_has_uncompressed_buf(arc_buf_hdr_t *hdr)
{
 ASSERT(hdr->b_l1hdr.b_state == arc_anon || HDR_EMPTY_OR_LOCKED(hdr));

 for (arc_buf_t *b = hdr->b_l1hdr.b_buf; b != ((void*)0); b = b->b_next) {
  if (!ARC_BUF_COMPRESSED(b)) {
   return (B_TRUE);
  }
 }
 return (B_FALSE);
}
