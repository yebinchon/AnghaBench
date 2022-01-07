
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ dwSize; scalar_t__ dwUsed; scalar_t__* buffer; TYPE_1__* editstream; } ;
struct TYPE_7__ {TYPE_3__* stream; } ;
struct TYPE_6__ {scalar_t__ dwError; } ;
typedef TYPE_2__ RTF_Info ;
typedef TYPE_3__ ME_InStream ;


 int EOF ;
 int ME_StreamInFill (TYPE_3__*) ;

int _RTFGetChar(RTF_Info *info)
{
 int ch;
        ME_InStream *stream = info->stream;

 if (stream->dwSize <= stream->dwUsed)
 {
                ME_StreamInFill(stream);

  if (stream->editstream->dwError)
   return EOF;

  if (stream->dwSize == 0)
   return EOF;
 }
 ch = (unsigned char)stream->buffer[stream->dwUsed++];
 if (!ch)
   return ' ';
 return ch;
}
