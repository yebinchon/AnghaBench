
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int * pattern; int style; int yorigin; int xorigin; } ;
typedef int STREAM ;
typedef TYPE_1__ BRUSH ;
typedef int BOOL ;


 int in_uint8 (int ,int ) ;
 int in_uint8a (int ,int *,int) ;
 int s_check (int ) ;

__attribute__((used)) static BOOL
rdp_parse_brush(STREAM s, BRUSH * brush, uint32 present)
{
 if (present & 1)
  in_uint8(s, brush->xorigin);

 if (present & 2)
  in_uint8(s, brush->yorigin);

 if (present & 4)
  in_uint8(s, brush->style);

 if (present & 8)
  in_uint8(s, brush->pattern[0]);

 if (present & 16)
  in_uint8a(s, &brush->pattern[1], 7);

 return s_check(s);
}
