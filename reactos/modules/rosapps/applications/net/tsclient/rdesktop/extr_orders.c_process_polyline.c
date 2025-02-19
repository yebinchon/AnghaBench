
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_11__ {int colour; scalar_t__ width; scalar_t__ style; } ;
struct TYPE_10__ {void* y; void* x; } ;
struct TYPE_9__ {int opcode; int lines; int datasize; int* data; int fgcolour; void* y; void* x; } ;
typedef int STREAM ;
typedef int RDPCLIENT ;
typedef TYPE_1__ POLYLINE_ORDER ;
typedef TYPE_2__ POINT ;
typedef TYPE_3__ PEN ;
typedef int BOOL ;


 int DEBUG (char*) ;
 int error (char*,...) ;
 int free (TYPE_2__*) ;
 int in_uint8 (int ,int) ;
 int in_uint8a (int ,int*,int) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 void* parse_delta (int*,int*) ;
 int rdp_in_colour (int ,int *) ;
 int rdp_in_coord (int ,void**,int ) ;
 int ui_polyline (int *,int,TYPE_2__*,int,TYPE_3__*) ;

__attribute__((used)) static void
process_polyline(RDPCLIENT * This, STREAM s, POLYLINE_ORDER * os, uint32 present, BOOL delta)
{
 int index, next, data;
 uint8 flags = 0;
 PEN pen;
 POINT *points;

 if (present & 0x01)
  rdp_in_coord(s, &os->x, delta);

 if (present & 0x02)
  rdp_in_coord(s, &os->y, delta);

 if (present & 0x04)
  in_uint8(s, os->opcode);

 if (present & 0x10)
  rdp_in_colour(s, &os->fgcolour);

 if (present & 0x20)
  in_uint8(s, os->lines);

 if (present & 0x40)
 {
  in_uint8(s, os->datasize);
  in_uint8a(s, os->data, os->datasize);
 }

 DEBUG(("POLYLINE(x=%d,y=%d,op=0x%x,fg=0x%x,n=%d,sz=%d)\n",
        os->x, os->y, os->opcode, os->fgcolour, os->lines, os->datasize));

 DEBUG(("Data: "));

 for (index = 0; index < os->datasize; index++)
  DEBUG(("%02x ", os->data[index]));

 DEBUG(("\n"));

 if (os->opcode < 0x01 || os->opcode > 0x10)
 {
  error("bad ROP2 0x%x\n", os->opcode);
  return;
 }

 points = (POINT *) malloc((os->lines + 1) * sizeof(POINT));

 if(points == ((void*)0))
  return;

 memset(points, 0, (os->lines + 1) * sizeof(POINT));

 points[0].x = os->x;
 points[0].y = os->y;
 pen.style = pen.width = 0;
 pen.colour = os->fgcolour;

 index = 0;
 data = ((os->lines - 1) / 4) + 1;
 for (next = 1; (next <= os->lines) && (data < os->datasize); next++)
 {
  if ((next - 1) % 4 == 0)
   flags = os->data[index++];

  if (~flags & 0x80)
   points[next].x = parse_delta(os->data, &data);

  if (~flags & 0x40)
   points[next].y = parse_delta(os->data, &data);

  flags <<= 2;
 }

 if (next - 1 == os->lines)



  ui_polyline(This, os->opcode, points, os->lines + 1, &pen);

 else
  error("polyline parse error\n");

 free(points);
}
