
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* stream; } ;
struct TYPE_8__ {int dwError; } ;
typedef int ME_TextEditor ;
typedef TYPE_2__ ME_OutStream ;
typedef int ME_Cursor ;
typedef int LRESULT ;
typedef int EDITSTREAM ;
typedef int DWORD ;


 int ME_StreamOutFlush (TYPE_2__*) ;
 int ME_StreamOutFree (TYPE_2__*) ;
 TYPE_2__* ME_StreamOutInit (int *,int *) ;
 int ME_StreamOutRTF (int *,TYPE_2__*,int const*,int,int) ;
 int ME_StreamOutText (int *,TYPE_2__*,int const*,int,int) ;
 int SF_RTF ;
 int SF_TEXT ;
 int SF_TEXTIZED ;

LRESULT ME_StreamOutRange(ME_TextEditor *editor, DWORD dwFormat,
                          const ME_Cursor *start,
                          int nChars, EDITSTREAM *stream)
{
  ME_OutStream *pStream = ME_StreamOutInit(editor, stream);

  if (dwFormat & SF_RTF)
    ME_StreamOutRTF(editor, pStream, start, nChars, dwFormat);
  else if (dwFormat & SF_TEXT || dwFormat & SF_TEXTIZED)
    ME_StreamOutText(editor, pStream, start, nChars, dwFormat);
  if (!pStream->stream->dwError)
    ME_StreamOutFlush(pStream);
  return ME_StreamOutFree(pStream);
}
