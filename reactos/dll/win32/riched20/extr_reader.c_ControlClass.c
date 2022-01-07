
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int rtfMajor; } ;
typedef TYPE_1__ RTF_Info ;


 int CharAttr (TYPE_1__*) ;
 int CharSet (TYPE_1__*) ;
 int DefFont (TYPE_1__*) ;
 int Destination (TYPE_1__*) ;
 int DocAttr (TYPE_1__*) ;
 int ME_RTFCharAttrHook (TYPE_1__*) ;
 int ME_RTFParAttrHook (TYPE_1__*) ;
 int ME_RTFSpecialCharHook (TYPE_1__*) ;
 int ME_RTFTblAttrHook (TYPE_1__*) ;
 int SpecialChar (TYPE_1__*) ;
__attribute__((used)) static void
ControlClass (RTF_Info *info)
{
 switch (info->rtfMajor)
 {
        case 135:
                CharAttr(info);
                ME_RTFCharAttrHook(info);
                break;
        case 130:
                ME_RTFParAttrHook(info);
                break;
        case 128:
                ME_RTFTblAttrHook(info);
                break;
        case 134:
                CharSet(info);
                break;
        case 133:
                DefFont(info);
                break;
 case 132:
  Destination (info);
  break;
        case 131:
                DocAttr(info);
                break;
 case 129:
                SpecialChar (info);
                ME_RTFSpecialCharHook(info);
  break;
 }
}
