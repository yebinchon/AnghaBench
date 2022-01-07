
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nHeight; int nBaseline; int nWidth; } ;
struct TYPE_7__ {TYPE_1__ row; } ;
struct TYPE_8__ {TYPE_2__ member; } ;
typedef TYPE_3__ ME_DisplayItem ;


 TYPE_3__* ME_MakeDI (int ) ;
 int diStartRow ;

__attribute__((used)) static ME_DisplayItem *ME_MakeRow(int height, int baseline, int width)
{
  ME_DisplayItem *item = ME_MakeDI(diStartRow);

  item->member.row.nHeight = height;
  item->member.row.nBaseline = baseline;
  item->member.row.nWidth = width;
  return item;
}
