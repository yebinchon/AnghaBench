
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int arc_flags_t ;
struct TYPE_4__ {int b_flags; } ;
typedef TYPE_1__ arc_buf_hdr_t ;


 int ASSERT (int ) ;
 int HDR_EMPTY_OR_LOCKED (TYPE_1__*) ;

__attribute__((used)) static inline void
arc_hdr_clear_flags(arc_buf_hdr_t *hdr, arc_flags_t flags)
{
 ASSERT(HDR_EMPTY_OR_LOCKED(hdr));
 hdr->b_flags &= ~flags;
}
