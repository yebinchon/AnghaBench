
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int srcy; int srcx; int cy; int cx; int y; int x; int opcode; } ;
typedef int STREAM ;
typedef TYPE_1__ SCREENBLT_ORDER ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int DEBUG (char*) ;
 int ROP2_S (int ) ;
 int in_uint8 (int ,int ) ;
 int rdp_in_coord (int ,int *,int ) ;
 int ui_screenblt (int *,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
process_screenblt(RDPCLIENT * This, STREAM s, SCREENBLT_ORDER * os, uint32 present, BOOL delta)
{
 if (present & 0x0001)
  rdp_in_coord(s, &os->x, delta);

 if (present & 0x0002)
  rdp_in_coord(s, &os->y, delta);

 if (present & 0x0004)
  rdp_in_coord(s, &os->cx, delta);

 if (present & 0x0008)
  rdp_in_coord(s, &os->cy, delta);

 if (present & 0x0010)
  in_uint8(s, os->opcode);

 if (present & 0x0020)
  rdp_in_coord(s, &os->srcx, delta);

 if (present & 0x0040)
  rdp_in_coord(s, &os->srcy, delta);

 DEBUG(("SCREENBLT(op=0x%x,x=%d,y=%d,cx=%d,cy=%d,srcx=%d,srcy=%d)\n",
        os->opcode, os->x, os->y, os->cx, os->cy, os->srcx, os->srcy));




 ui_screenblt(This, os->opcode, os->x, os->y, os->cx, os->cy, os->srcx, os->srcy);

}
