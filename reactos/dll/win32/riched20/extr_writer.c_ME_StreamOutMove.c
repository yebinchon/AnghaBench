
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pos; scalar_t__ buffer; } ;
typedef TYPE_1__ ME_OutStream ;
typedef int BOOL ;


 int FALSE ;
 int ME_StreamOutFlush (TYPE_1__*) ;
 scalar_t__ STREAMOUT_BUFFER_SIZE ;
 int TRACE (char*,scalar_t__,int,int ) ;
 int TRUE ;
 int debugstr_an (char const*,int) ;
 int memmove (scalar_t__,char const*,int) ;
 int min (int,int) ;

__attribute__((used)) static BOOL
ME_StreamOutMove(ME_OutStream *pStream, const char *buffer, int len)
{
  while (len) {
    int space = STREAMOUT_BUFFER_SIZE - pStream->pos;
    int fit = min(space, len);

    TRACE("%u:%u:%s\n", pStream->pos, fit, debugstr_an(buffer,fit));
    memmove(pStream->buffer + pStream->pos, buffer, fit);
    len -= fit;
    buffer += fit;
    pStream->pos += fit;
    if (pStream->pos == STREAMOUT_BUFFER_SIZE) {
      if (!ME_StreamOutFlush(pStream))
        return FALSE;
    }
  }
  return TRUE;
}
