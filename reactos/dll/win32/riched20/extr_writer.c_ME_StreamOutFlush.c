
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dwError; int dwCookie; scalar_t__ (* pfnCallback ) (int ,int ,scalar_t__,scalar_t__*) ;} ;
struct TYPE_4__ {scalar_t__ pos; int written; scalar_t__ buffer; TYPE_2__* stream; } ;
typedef TYPE_1__ ME_OutStream ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef TYPE_2__ EDITSTREAM ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,scalar_t__,...) ;
 int TRUE ;
 scalar_t__ stub1 (int ,int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static BOOL
ME_StreamOutFlush(ME_OutStream *pStream)
{
  LONG nWritten = 0;
  EDITSTREAM *stream = pStream->stream;

  if (pStream->pos) {
    TRACE("sending %u bytes\n", pStream->pos);
    nWritten = pStream->pos;
    stream->dwError = stream->pfnCallback(stream->dwCookie, (LPBYTE)pStream->buffer,
                                          pStream->pos, &nWritten);
    TRACE("error=%u written=%u\n", stream->dwError, nWritten);
    if (nWritten == 0 || stream->dwError)
      return FALSE;

  }
  if (nWritten == pStream->pos)
      pStream->written += nWritten;
  pStream->pos = 0;
  return TRUE;
}
