
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XtConvertArgList ;
typedef int Cardinal ;


 int XawInitializeWidgetSet () ;
 int XmuCvtStringToOrientation ;
 int XtAddConverter (int ,int ,int ,int ,int ) ;
 int XtROrientation ;
 int XtRString ;

__attribute__((used)) static void
ClassInitialize()
{
    XawInitializeWidgetSet();
    XtAddConverter( XtRString, XtROrientation, XmuCvtStringToOrientation,
     (XtConvertArgList)((void*)0), (Cardinal)0 );
}
