
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int bottom; int right; int top; int left; } ;
typedef int STREAM ;
typedef TYPE_1__ BOUNDS ;
typedef int BOOL ;


 int False ;
 int True ;
 int in_uint8 (int ,int) ;
 int rdp_in_coord (int ,int *,int ) ;
 int s_check (int ) ;

__attribute__((used)) static BOOL
rdp_parse_bounds(STREAM s, BOUNDS * bounds)
{
 uint8 present;

 in_uint8(s, present);

 if (present & 1)
  rdp_in_coord(s, &bounds->left, False);
 else if (present & 16)
  rdp_in_coord(s, &bounds->left, True);

 if (present & 2)
  rdp_in_coord(s, &bounds->top, False);
 else if (present & 32)
  rdp_in_coord(s, &bounds->top, True);

 if (present & 4)
  rdp_in_coord(s, &bounds->right, False);
 else if (present & 64)
  rdp_in_coord(s, &bounds->right, True);

 if (present & 8)
  rdp_in_coord(s, &bounds->bottom, False);
 else if (present & 128)
  rdp_in_coord(s, &bounds->bottom, True);

 return s_check(s);
}
