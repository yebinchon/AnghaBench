
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dwUsed; int dwSize; scalar_t__ buffer; TYPE_1__* editstream; } ;
struct TYPE_4__ {int dwCookie; int (* pfnCallback ) (int ,int *,int,int *) ;int dwError; } ;
typedef TYPE_2__ ME_InStream ;
typedef int LONG ;
typedef int BYTE ;


 int stub1 (int ,int *,int,int *) ;

void
ME_StreamInFill(ME_InStream *stream)
{
  stream->editstream->dwError = stream->editstream->pfnCallback(stream->editstream->dwCookie,
                                                                (BYTE *)stream->buffer,
                                                                sizeof(stream->buffer),
                                                                (LONG *)&stream->dwSize);
  stream->dwUsed = 0;
}
