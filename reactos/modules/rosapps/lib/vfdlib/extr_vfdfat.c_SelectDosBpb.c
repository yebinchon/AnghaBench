
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bpb_tbl ;
typedef scalar_t__ USHORT ;
struct TYPE_3__ {int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; int member_9; scalar_t__ SmallSectors; int member_11; int member_10; int const member_0; } ;
typedef TYPE_1__ DOS_BPB ;




__attribute__((used)) static const DOS_BPB *SelectDosBpb(
 USHORT nSectors)
{
 static const DOS_BPB bpb_tbl[] = {

  {128, 2, 1, 2, 112, 320, 0xFE, 1, 8, 1, 0, 0},
  {128, 2, 1, 2, 112, 360, 0xFC, 1, 9, 1, 0, 0},
  {128, 2, 1, 2, 112, 640, 0xFF, 1, 8, 2, 0, 0},
  {128, 2, 1, 2, 112, 720, 0xFD, 2, 9, 2, 0, 0},
  {128, 2, 1, 2, 112, 1280, 0xFB, 2, 8, 2, 0, 0},
  {128, 2, 1, 2, 112, 1440, 0xF9, 3, 9, 2, 0, 0},
  {128, 2, 1, 2, 112, 1640, 0xF9, 3, 10, 2, 0, 0},
  {128, 1, 1, 2, 224, 2400, 0xF9, 7, 15, 2, 0, 0},
  {128, 1, 1, 2, 224, 2880, 0xF0, 9, 18, 2, 0, 0},
  {128, 1, 1, 2, 224, 3360, 0xF0, 10, 21, 2, 0, 0},
  {128, 1, 1, 2, 224, 3444, 0xF0, 10, 21, 2, 0, 0},
  {128, 2, 1, 2, 240, 5760, 0xF0, 9, 36, 2, 0, 0},
 };

 int i;

 for (i = 0; i < sizeof(bpb_tbl) / sizeof(bpb_tbl[0]); i++) {
  if (nSectors == bpb_tbl[i].SmallSectors) {
   return &bpb_tbl[i];
  }
 }

 return ((void*)0);
}
