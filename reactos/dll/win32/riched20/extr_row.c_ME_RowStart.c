
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ME_DisplayItem ;


 int * ME_FindItemBackOrHere (int *,int ) ;
 int diStartRow ;

ME_DisplayItem *ME_RowStart(ME_DisplayItem *item) {
  return ME_FindItemBackOrHere(item, diStartRow);
}
