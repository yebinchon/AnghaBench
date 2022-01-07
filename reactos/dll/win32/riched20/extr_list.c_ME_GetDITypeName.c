
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ME_DIType ;
__attribute__((used)) static const char *ME_GetDITypeName(ME_DIType type)
{
  switch(type)
  {
    case 132: return "diParagraph";
    case 131: return "diRun";
    case 133: return "diCell";
    case 128: return "diTextStart";
    case 129: return "diTextEnd";
    case 130: return "diStartRow";
    default: return "?";
  }
}
