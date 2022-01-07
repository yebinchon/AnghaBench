
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int colour; int width; int style; } ;
typedef int STREAM ;
typedef TYPE_1__ PEN ;
typedef int BOOL ;


 int in_uint8 (int ,int ) ;
 int rdp_in_colour (int ,int *) ;
 int s_check (int ) ;

__attribute__((used)) static BOOL
rdp_parse_pen(STREAM s, PEN * pen, uint32 present)
{
 if (present & 1)
  in_uint8(s, pen->style);

 if (present & 2)
  in_uint8(s, pen->width);

 if (present & 4)
  rdp_in_colour(s, &pen->colour);

 return s_check(s);
}
