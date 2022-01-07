
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rtfFormat; scalar_t__ rtfMajor; char* rtfTextBuf; size_t rtfTextLen; int rtfClass; int pushedClass; scalar_t__ pushedMajor; int pushedTextBuf; int pushedParam; int rtfParam; scalar_t__ pushedMinor; scalar_t__ rtfMinor; } ;
typedef TYPE_1__ RTF_Info ;


 scalar_t__ EOF ;
 scalar_t__ GetChar (TYPE_1__*) ;
 scalar_t__ SF_TEXT ;
 int _RTFGetToken2 (TYPE_1__*) ;
 int lstrcpyA (char*,int ) ;
 size_t lstrlenA (char*) ;
 int rtfEOF ;
 int rtfNoParam ;
 int rtfText ;

__attribute__((used)) static void _RTFGetToken(RTF_Info *info)
{
 if (info->rtfFormat == SF_TEXT)
 {
  info->rtfMajor = GetChar (info);
  info->rtfMinor = 0;
  info->rtfParam = rtfNoParam;
  info->rtfTextBuf[info->rtfTextLen = 0] = '\0';
  if (info->rtfMajor == EOF)
   info->rtfClass = rtfEOF;
  else
   info->rtfClass = rtfText;
  return;
 }



 if (info->pushedClass >= 0)
 {
  info->rtfClass = info->pushedClass;
  info->rtfMajor = info->pushedMajor;
  info->rtfMinor = info->pushedMinor;
  info->rtfParam = info->pushedParam;
  lstrcpyA (info->rtfTextBuf, info->pushedTextBuf);
  info->rtfTextLen = lstrlenA(info->rtfTextBuf);
  info->pushedClass = -1;
  return;
 }






 _RTFGetToken2 (info);
}
