
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int rtfParam; char* rtfTextBuf; size_t rtfTextLen; int pushedChar; int rtfMajor; void* rtfClass; TYPE_2__* stream; int rtfMinor; } ;
struct TYPE_8__ {TYPE_1__* editstream; } ;
struct TYPE_7__ {int dwError; } ;
typedef TYPE_3__ RTF_Info ;


 int EOF ;
 int GetChar (TYPE_3__*) ;
 int Lookup (TYPE_3__*,char*) ;
 int RTFCharToHex (int) ;
 scalar_t__ isalpha (int) ;
 scalar_t__ isdigit (int) ;
 scalar_t__ isxdigit (int) ;
 int rtfBeginGroup ;
 void* rtfControl ;
 void* rtfEOF ;
 int rtfEndGroup ;
 void* rtfGroup ;
 int rtfNoParam ;
 int rtfSpecialChar ;
 int rtfTab ;
 void* rtfText ;
 void* rtfUnknown ;

__attribute__((used)) static void _RTFGetToken2(RTF_Info *info)
{
 int sign;
 int c;



 info->rtfClass = rtfUnknown;
 info->rtfParam = rtfNoParam;
 info->rtfTextBuf[info->rtfTextLen = 0] = '\0';



 if (info->pushedChar != EOF)
 {
  c = info->pushedChar;
  info->rtfTextBuf[info->rtfTextLen++] = c;
  info->rtfTextBuf[info->rtfTextLen] = '\0';
  info->pushedChar = EOF;
 }
 else if ((c = GetChar (info)) == EOF)
 {
  info->rtfClass = rtfEOF;
  return;
 }

 if (c == '{')
 {
  info->rtfClass = rtfGroup;
  info->rtfMajor = rtfBeginGroup;
  return;
 }
 if (c == '}')
 {
  info->rtfClass = rtfGroup;
  info->rtfMajor = rtfEndGroup;
  return;
 }
 if (c != '\\')
 {





  if (c == '\t')
  {
   info->rtfClass = rtfControl;
   info->rtfMajor = rtfSpecialChar;
   info->rtfMinor = rtfTab;
  }
  else
  {
   info->rtfClass = rtfText;
   info->rtfMajor = c;
  }
  return;
 }
 if ((c = GetChar (info)) == EOF)
 {

  return;
 }
 if (!isalpha (c))
 {






  if (c == '\'')
  {
  int c2;

   if ((c = GetChar (info)) != EOF && (c2 = GetChar (info)) != EOF
    && isxdigit(c) && isxdigit(c2))
   {
    info->rtfClass = rtfText;
    info->rtfMajor = RTFCharToHex (c) * 16 + RTFCharToHex (c2);
    return;
   }

   info->rtfClass = rtfEOF;
   info->stream->editstream->dwError = -14;
   return;
  }



  if (c == ':' || c == '{' || c == '}' || c == '\\')
  {
   info->rtfClass = rtfText;
   info->rtfMajor = c;
   return;
  }


  Lookup (info, info->rtfTextBuf);
  return;
 }

 while (isalpha (c))
 {
  if ((c = GetChar (info)) == EOF)
   break;
 }
 if (c != EOF)
  info->rtfTextBuf[info->rtfTextLen-1] = '\0';
 Lookup (info, info->rtfTextBuf);
 if (c != EOF)
  info->rtfTextBuf[info->rtfTextLen-1] = c;







 sign = 1;
 if (c == '-')
 {
  sign = -1;
  c = GetChar (info);
 }
 if (c != EOF && isdigit (c))
 {
  info->rtfParam = 0;
  while (isdigit (c))
  {
   info->rtfParam = info->rtfParam * 10 + c - '0';
   if ((c = GetChar (info)) == EOF)
    break;
  }
  info->rtfParam *= sign;
 }






 if (c != EOF)
 {
  if (c != ' ')
   info->pushedChar = c;
  info->rtfTextBuf[--info->rtfTextLen] = '\0';
 }
}
