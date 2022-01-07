
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int cbSize; } ;
struct TYPE_8__ {char* rtfTextBuf; char* pushedTextBuf; int ansiCodePage; int unicodeLength; int codePage; int rtfClass; int pushedClass; int dwMaxCPOutputCount; TYPE_2__ fmt; scalar_t__ borderType; void* canInheritInTbl; scalar_t__ nestingLevel; int * tableDef; void* cpOutputBuffer; scalar_t__ dwCPOutputCount; void* bumpLine; void* prevChar; scalar_t__ rtfLinePos; scalar_t__ rtfLineNum; void* pushedChar; scalar_t__ defFont; } ;
typedef TYPE_1__ RTF_Info ;


 void* EOF ;
 int ERR (char*) ;
 void* FALSE ;
 int RTFDestroyAttrs (TYPE_1__*) ;
 int RTFSetClassCallback (TYPE_1__*,int,int *) ;
 int RTFSetDestinationCallback (TYPE_1__*,int,int *) ;
 int RTFSetReadHook (TYPE_1__*,int *) ;
 int * ReadColorTbl ;
 int * ReadFontTbl ;
 int * ReadInfoGroup ;
 int * ReadObjGroup ;
 int * ReadPictGroup ;
 int * ReadStyleSheet ;
 void* heap_alloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int rtfBufSiz ;
 int rtfColorTbl ;
 int rtfFontTbl ;
 int rtfInfo ;
 int rtfMaxClass ;
 int rtfMaxDestination ;
 int rtfObject ;
 int rtfPict ;
 int rtfStyleSheet ;

void RTFInit(RTF_Info *info)
{
 int i;

 if (info->rtfTextBuf == ((void*)0))
 {
  info->rtfTextBuf = heap_alloc (rtfBufSiz);
  info->pushedTextBuf = heap_alloc (rtfBufSiz);
  if (info->rtfTextBuf == ((void*)0) || info->pushedTextBuf == ((void*)0)) {
   ERR ("Cannot allocate text buffers.\n");
   return;
  }
  info->rtfTextBuf[0] = info->pushedTextBuf[0] = '\0';
 }

 for (i = 0; i < rtfMaxClass; i++)
  RTFSetClassCallback (info, i, ((void*)0));
 for (i = 0; i < rtfMaxDestination; i++)
  RTFSetDestinationCallback (info, i, ((void*)0));


 RTFSetDestinationCallback (info, rtfFontTbl, ReadFontTbl);
 RTFSetDestinationCallback (info, rtfColorTbl, ReadColorTbl);
 RTFSetDestinationCallback (info, rtfStyleSheet, ReadStyleSheet);
 RTFSetDestinationCallback (info, rtfInfo, ReadInfoGroup);
 RTFSetDestinationCallback (info, rtfPict, ReadPictGroup);
 RTFSetDestinationCallback (info, rtfObject, ReadObjGroup);


 RTFSetReadHook (info, ((void*)0));



 RTFDestroyAttrs(info);

        info->ansiCodePage = 1252;
 info->unicodeLength = 1;
 info->codePage = info->ansiCodePage;
        info->defFont = 0;

 info->rtfClass = -1;
 info->pushedClass = -1;
 info->pushedChar = EOF;

 info->rtfLineNum = 0;
 info->rtfLinePos = 0;
 info->prevChar = EOF;
        info->bumpLine = FALSE;

 info->dwCPOutputCount = 0;
        if (!info->cpOutputBuffer)
 {
  info->dwMaxCPOutputCount = 0x1000;
  info->cpOutputBuffer = heap_alloc(info->dwMaxCPOutputCount);
 }

        info->tableDef = ((void*)0);
        info->nestingLevel = 0;
        info->canInheritInTbl = FALSE;
        info->borderType = 0;

        memset(&info->fmt, 0, sizeof(info->fmt));
        info->fmt.cbSize = sizeof(info->fmt);
}
