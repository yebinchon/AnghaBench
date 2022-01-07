
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;




 int ComboBox_GetCurSel (int ) ;
 int ComboBox_GetItemData (int ,int ) ;
 int ExtractFreeDOS (char const*) ;
 int ExtractMSDOS (char const*) ;
 int FALSE ;
 int hBootType ;

BOOL ExtractDOS(const char* path)
{
 switch(ComboBox_GetItemData(hBootType, ComboBox_GetCurSel(hBootType))) {
 case 128:
  return ExtractMSDOS(path);
 case 129:
  return ExtractFreeDOS(path);
 }
 return FALSE;
}
