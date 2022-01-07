
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ME_DIType ;
typedef int BOOL ;


 int diParagraph ;

 int diRun ;



 int diStartRow ;


 int diTextEnd ;

__attribute__((used)) static BOOL ME_DITypesEqual(ME_DIType type, ME_DIType nTypeOrClass)
{
  switch (nTypeOrClass)
  {
    case 132:
      return type == diRun || type == diParagraph;
    case 130:
      return type == diRun || type == diStartRow;
    case 133:
      return type == diTextEnd || type == diParagraph;
    case 129:
      return type == diStartRow || type == diParagraph;
    case 128:
      return type == diStartRow || type == diParagraph || type == diTextEnd;
    case 131:
      return type == diRun || type == diParagraph || type == diTextEnd;
    default:
      return type == nTypeOrClass;
  }
}
