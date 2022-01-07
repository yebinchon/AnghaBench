
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int fgcolour; scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; scalar_t__ fillmode; scalar_t__ opcode; } ;
typedef int STREAM ;
typedef int RDPCLIENT ;
typedef TYPE_1__ ELLIPSE_ORDER ;
typedef int BOOL ;


 int DEBUG (char*) ;
 int in_uint8 (int ,scalar_t__) ;
 int rdp_in_colour (int ,int *) ;
 int rdp_in_coord (int ,scalar_t__*,int ) ;
 int ui_ellipse (int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,int ,int ) ;

__attribute__((used)) static void
process_ellipse(RDPCLIENT * This, STREAM s, ELLIPSE_ORDER * os, uint32 present, BOOL delta)
{
 if (present & 0x01)
  rdp_in_coord(s, &os->left, delta);

 if (present & 0x02)
  rdp_in_coord(s, &os->top, delta);

 if (present & 0x04)
  rdp_in_coord(s, &os->right, delta);

 if (present & 0x08)
  rdp_in_coord(s, &os->bottom, delta);

 if (present & 0x10)
  in_uint8(s, os->opcode);

 if (present & 0x20)
  in_uint8(s, os->fillmode);

 if (present & 0x40)
  rdp_in_colour(s, &os->fgcolour);

 DEBUG(("ELLIPSE(l=%d,t=%d,r=%d,b=%d,op=0x%x,fm=%d,fg=0x%x)\n", os->left, os->top,
        os->right, os->bottom, os->opcode, os->fillmode, os->fgcolour));





 ui_ellipse(This, os->opcode, os->fillmode, os->left, os->top, os->right - os->left,
     os->bottom - os->top, ((void*)0), 0, os->fgcolour);

}
