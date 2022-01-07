
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_3__ {int b_hdr; } ;
typedef TYPE_1__ arc_buf_t ;


 scalar_t__ HDR_NOAUTH (int ) ;

boolean_t
arc_is_unauthenticated(arc_buf_t *buf)
{
 return (HDR_NOAUTH(buf->b_hdr) != 0);
}
