
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int left; int top; int right; int bottom; scalar_t__ action; int offset; } ;
typedef int STREAM ;
typedef int RDPCLIENT ;
typedef TYPE_1__ DESKSAVE_ORDER ;
typedef int BOOL ;


 int DEBUG (char*) ;
 int in_uint32_le (int ,int ) ;
 int in_uint8 (int ,scalar_t__) ;
 int rdp_in_coord (int ,int*,int ) ;
 int ui_desktop_restore (int *,int ,int,int,int,int) ;
 int ui_desktop_save (int *,int ,int,int,int,int) ;

__attribute__((used)) static void
process_desksave(RDPCLIENT * This, STREAM s, DESKSAVE_ORDER * os, uint32 present, BOOL delta)
{
 int width, height;

 if (present & 0x01)
  in_uint32_le(s, os->offset);

 if (present & 0x02)
  rdp_in_coord(s, &os->left, delta);

 if (present & 0x04)
  rdp_in_coord(s, &os->top, delta);

 if (present & 0x08)
  rdp_in_coord(s, &os->right, delta);

 if (present & 0x10)
  rdp_in_coord(s, &os->bottom, delta);

 if (present & 0x20)
  in_uint8(s, os->action);

 DEBUG(("DESKSAVE(l=%d,t=%d,r=%d,b=%d,off=%d,op=%d)\n",
        os->left, os->top, os->right, os->bottom, os->offset, os->action));

 width = os->right - os->left + 1;
 height = os->bottom - os->top + 1;

 if (os->action == 0)
  ui_desktop_save(This, os->offset, os->left, os->top, width, height);
 else
  ui_desktop_restore(This, os->offset, os->left, os->top, width, height);
}
