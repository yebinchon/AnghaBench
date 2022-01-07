
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int szEOL ;
typedef char WCHAR ;
typedef int UINT ;
struct TYPE_12__ {int nFlags; scalar_t__ len; } ;
struct TYPE_9__ {TYPE_4__ run; } ;
struct TYPE_13__ {TYPE_1__ member; } ;
struct TYPE_11__ {TYPE_7__* pRun; scalar_t__ nOffset; } ;
struct TYPE_10__ {int bEmulateVersion10; } ;
typedef TYPE_2__ ME_TextEditor ;
typedef int ME_OutStream ;
typedef TYPE_3__ ME_Cursor ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 scalar_t__ FALSE ;
 int HIWORD (int) ;
 int MERF_ENDPARA ;
 TYPE_7__* ME_FindItemFwd (TYPE_7__*,int ) ;
 scalar_t__ ME_StreamOutMove (int *,char const*,int) ;
 int SF_UNICODE ;
 int SF_USECODEPAGE ;
 scalar_t__ TRUE ;
 int WideCharToMultiByte (int ,int ,scalar_t__,int,char*,int,int *,int *) ;
 int diRun ;
 scalar_t__ get_text (TYPE_4__*,scalar_t__) ;
 int heap_free (char*) ;
 char* heap_realloc (char*,int) ;
 int min (int,scalar_t__) ;

__attribute__((used)) static BOOL ME_StreamOutText(ME_TextEditor *editor, ME_OutStream *pStream,
                             const ME_Cursor *start, int nChars, DWORD dwFormat)
{
  ME_Cursor cursor = *start;
  int nLen;
  UINT nCodePage = CP_ACP;
  char *buffer = ((void*)0);
  int nBufLen = 0;
  BOOL success = TRUE;

  if (!cursor.pRun)
    return FALSE;

  if (dwFormat & SF_USECODEPAGE)
    nCodePage = HIWORD(dwFormat);



  while (success && nChars && cursor.pRun) {
    nLen = min(nChars, cursor.pRun->member.run.len - cursor.nOffset);

    if (!editor->bEmulateVersion10 && cursor.pRun->member.run.nFlags & MERF_ENDPARA)
    {
      static const WCHAR szEOL[] = { '\r', '\n' };


      if (dwFormat & SF_UNICODE)
        success = ME_StreamOutMove(pStream, (const char *)szEOL, sizeof(szEOL));
      else
        success = ME_StreamOutMove(pStream, "\r\n", 2);
    } else {
      if (dwFormat & SF_UNICODE)
        success = ME_StreamOutMove(pStream, (const char *)(get_text( &cursor.pRun->member.run, cursor.nOffset )),
                                   sizeof(WCHAR) * nLen);
      else {
        int nSize;

        nSize = WideCharToMultiByte(nCodePage, 0, get_text( &cursor.pRun->member.run, cursor.nOffset ),
                                    nLen, ((void*)0), 0, ((void*)0), ((void*)0));
        if (nSize > nBufLen) {
          buffer = heap_realloc(buffer, nSize);
          nBufLen = nSize;
        }
        WideCharToMultiByte(nCodePage, 0, get_text( &cursor.pRun->member.run, cursor.nOffset ),
                            nLen, buffer, nSize, ((void*)0), ((void*)0));
        success = ME_StreamOutMove(pStream, buffer, nSize);
      }
    }

    nChars -= nLen;
    cursor.nOffset = 0;
    cursor.pRun = ME_FindItemFwd(cursor.pRun, diRun);
  }

  heap_free(buffer);
  return success;
}
