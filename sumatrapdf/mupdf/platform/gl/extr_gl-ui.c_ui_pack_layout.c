
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int x0; int x1; int y0; int y1; } ;
typedef TYPE_2__ fz_irect ;
typedef enum side { ____Placeholder_side } side ;
typedef enum fill { ____Placeholder_fill } fill ;
typedef enum anchor { ____Placeholder_anchor } anchor ;
struct TYPE_7__ {TYPE_1__* cavity; } ;
struct TYPE_5__ {int x0; int x1; int y0; int y1; } ;
 int X ;
 int Y ;
 TYPE_4__ ui ;

fz_irect ui_pack_layout(int slave_w, int slave_h, enum side side, enum fill fill, enum anchor anchor, int padx, int pady)
{
 fz_irect parcel, slave;
 int parcel_w, parcel_h;
 int anchor_x, anchor_y;

 switch (side)
 {
 default:
 case 141:
  parcel.x0 = ui.cavity->x0 + padx;
  parcel.x1 = ui.cavity->x1 - padx;
  parcel.y0 = ui.cavity->y0 + pady;
  parcel.y1 = ui.cavity->y1 - pady;
  ui.cavity->x0 = ui.cavity->x1;
  ui.cavity->y0 = ui.cavity->y1;
  break;
 case 129:
  parcel.x0 = ui.cavity->x0 + padx;
  parcel.x1 = ui.cavity->x1 - padx;
  parcel.y0 = ui.cavity->y0 + pady;
  parcel.y1 = ui.cavity->y0 + pady + slave_h;
  ui.cavity->y0 = parcel.y1 + pady;
  break;
 case 140:
  parcel.x0 = ui.cavity->x0 + padx;
  parcel.x1 = ui.cavity->x1 - padx;
  parcel.y0 = ui.cavity->y1 - pady - slave_h;
  parcel.y1 = ui.cavity->y1 - pady;
  ui.cavity->y1 = parcel.y0 - pady;
  break;
 case 137:
  parcel.x0 = ui.cavity->x0 + padx;
  parcel.x1 = ui.cavity->x0 + padx + slave_w;
  parcel.y0 = ui.cavity->y0 + pady;
  parcel.y1 = ui.cavity->y1 - pady;
  ui.cavity->x0 = parcel.x1 + padx;
  break;
 case 133:
  parcel.x0 = ui.cavity->x1 - padx - slave_w;
  parcel.x1 = ui.cavity->x1 - padx;
  parcel.y0 = ui.cavity->y0 + pady;
  parcel.y1 = ui.cavity->y1 - pady;
  ui.cavity->x1 = parcel.x0 - padx;
  break;
 }

 parcel_w = parcel.x1 - parcel.x0;
 parcel_h = parcel.y1 - parcel.y0;

 if (fill & X)
  slave_w = parcel_w;
 if (fill & Y)
  slave_h = parcel_h;

 anchor_x = parcel_w - slave_w;
 anchor_y = parcel_h - slave_h;

 switch (anchor)
 {
 default:
 case 139:
  slave.x0 = parcel.x0 + anchor_x / 2;
  slave.y0 = parcel.y0 + anchor_y / 2;
  break;
 case 136:
  slave.x0 = parcel.x0 + anchor_x / 2;
  slave.y0 = parcel.y0;
  break;
 case 135:
  slave.x0 = parcel.x0 + anchor_x;
  slave.y0 = parcel.y0;
  break;
 case 138:
  slave.x0 = parcel.x0 + anchor_x;
  slave.y0 = parcel.y0 + anchor_y / 2;
  break;
 case 131:
  slave.x0 = parcel.x0 + anchor_x;
  slave.y0 = parcel.y0 + anchor_y;
  break;
 case 132:
  slave.x0 = parcel.x0 + anchor_x / 2;
  slave.y0 = parcel.y0 + anchor_y;
  break;
 case 130:
  slave.x0 = parcel.x0;
  slave.y0 = parcel.y0 + anchor_y;
  break;
 case 128:
  slave.x0 = parcel.x0;
  slave.y0 = parcel.y0 + anchor_y / 2;
  break;
 case 134:
  slave.x0 = parcel.x0;
  slave.y0 = parcel.y0;
  break;
 }

 slave.x1 = slave.x0 + slave_w;
 slave.y1 = slave.y0 + slave_h;

 return slave;
}
