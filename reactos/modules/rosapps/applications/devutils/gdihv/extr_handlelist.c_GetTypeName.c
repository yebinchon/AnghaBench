
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef char TCHAR ;
typedef int HANDLE ;


 int GDI_HANDLE_GET_TYPE (int ) ;
TCHAR*
GetTypeName(HANDLE handle)
{
 TCHAR* strText;
 UINT Type = GDI_HANDLE_GET_TYPE(handle);

 switch (Type)
 {
  case 143:
   strText = L"DC";
   break;
  case 129:
   strText = L"Region";
   break;
  case 146:
   strText = L"Bitmap";
   break;
  case 132:
   strText = L"Palette";
   break;
  case 136:
   strText = L"Font";
   break;
  case 145:
   strText = L"Brush";
   break;
  case 140:
   strText = L"EMF";
   break;
  case 131:
   strText = L"Pen";
   break;
  case 137:
   strText = L"ExtPen";
   break;
  case 144:
   strText = L"ColSpace";
   break;
  case 134:
   strText = L"MetaDC";
   break;
  case 133:
   strText = L"Metafile";
   break;
  case 138:
   strText = L"EMF";
   break;
  case 139:
   strText = L"EMDC";
   break;
  case 135:
   strText = L"MemDC";
   break;
  case 142:
   strText = L"DCE";
   break;
  case 130:
   strText = L"PFE";
   break;
  case 141:
   strText = L"anything";
   break;
  case 128:
  default:
   strText = L"unknown";
   break;
 }
 return strText;
}
