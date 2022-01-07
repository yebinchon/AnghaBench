
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RTF_Info ;


 int ControlClass ;
 int RTFSetClassCallback (int *,int ,int ) ;
 int TextClass ;
 int rtfControl ;
 int rtfText ;

int
BeginFile (RTF_Info *info )
{


 RTFSetClassCallback (info, rtfText, TextClass);
 RTFSetClassCallback (info, rtfControl, ControlClass);

 return (1);
}
