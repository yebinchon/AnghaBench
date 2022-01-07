
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int fDsrSensitivity; unsigned int fOutxDsrFlow; } ;
struct TYPE_6__ {scalar_t__ old_style; scalar_t__ result; } ;
typedef TYPE_1__ TEST ;
typedef unsigned int DWORD ;
typedef TYPE_2__ DCB ;


 int BaudRate ;
 int ByteSize ;
 int DCBlength ;
 int EofChar ;
 int ErrorChar ;
 int EvtChar ;
 int Parity ;
 int StopBits ;
 int XoffChar ;
 int XoffLim ;
 int XonChar ;
 int XonLim ;
 int check_dcb_member (int ,char*) ;
 int check_dcb_member2 (int ,unsigned int,char*) ;
 int fAbortOnError ;
 int fBinary ;
 int fDsrSensitivity ;
 int fDtrControl ;
 int fDummy2 ;
 int fErrorChar ;
 int fInX ;
 int fNull ;
 int fOutX ;
 int fOutxCtsFlow ;
 int fOutxDsrFlow ;
 int fParity ;
 int fRtsControl ;
 int fTXContinueOnXoff ;
 int wReserved ;
 int wReserved1 ;

__attribute__((used)) static void check_dcb(const char *function, const TEST *ptest, int initial_value, const DCB *pdcb1, const DCB *pdcb2)
{


 check_dcb_member2(DCBlength, (DWORD)sizeof(DCB), "%u");


 if(ptest->old_style && ptest->result)
 {
  check_dcb_member2(fOutxCtsFlow, ((unsigned int)initial_value & 1), "%u");
  check_dcb_member2(fDtrControl, ((unsigned int)initial_value & 3), "%u");
  check_dcb_member2(fOutX, ((unsigned int)initial_value & 1), "%u");
  check_dcb_member2(fInX, ((unsigned)initial_value & 1), "%u");
  check_dcb_member2(fRtsControl, ((unsigned)initial_value & 3), "%u");
 }
 else
 {
  check_dcb_member(fOutxCtsFlow, "%u");
  check_dcb_member(fDtrControl, "%u");
  check_dcb_member(fOutX, "%u");
  check_dcb_member(fInX, "%u");
  check_dcb_member(fRtsControl, "%u");
 }

 if(ptest->result)
 {


  if(!ptest->old_style)
  {
   check_dcb_member2(fOutxDsrFlow, pdcb2->fDsrSensitivity, "%u");
   check_dcb_member2(fDsrSensitivity, pdcb2->fOutxDsrFlow, "%u");
  }
  else
  {


   check_dcb_member2(fOutxDsrFlow, ((unsigned int)initial_value & 1), "%u");
   check_dcb_member(fDsrSensitivity, "%u");
  }
 }
 else
 {
  check_dcb_member(fOutxDsrFlow, "%u");
  check_dcb_member(fDsrSensitivity, "%u");
 }


 check_dcb_member(BaudRate, "%u");
 check_dcb_member(fBinary, "%u");
 check_dcb_member(fParity, "%u");
 check_dcb_member(fTXContinueOnXoff, "%u");
 check_dcb_member(fErrorChar, "%u");
 check_dcb_member(fNull, "%u");
 check_dcb_member(fAbortOnError, "%u");
 check_dcb_member(fDummy2, "%u");
 check_dcb_member(wReserved, "%u");
 check_dcb_member(XonLim, "%u");
 check_dcb_member(XoffLim, "%u");
 check_dcb_member(ByteSize, "%u");
 check_dcb_member(Parity, "%u");
 check_dcb_member(StopBits, "%u");
 check_dcb_member(XonChar, "%d");
 check_dcb_member(XoffChar, "%d");
 check_dcb_member(ErrorChar, "%d");
 check_dcb_member(EofChar, "%d");
 check_dcb_member(EvtChar, "%d");
 check_dcb_member(wReserved1, "%u");
}
