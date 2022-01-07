
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ dwError; } ;
struct TYPE_7__ {int dwEffects; int bUnderlineType; } ;
struct TYPE_8__ {int nColorTblLen; TYPE_1__ cur_fmt; TYPE_3__* stream; } ;
typedef int ME_TextEditor ;
typedef TYPE_2__ ME_OutStream ;
typedef TYPE_3__ EDITSTREAM ;


 int CFE_AUTOBACKCOLOR ;
 int CFE_AUTOCOLOR ;
 int CFU_UNDERLINE ;
 TYPE_2__* heap_alloc_zero (int) ;

__attribute__((used)) static ME_OutStream*
ME_StreamOutInit(ME_TextEditor *editor, EDITSTREAM *stream)
{
  ME_OutStream *pStream = heap_alloc_zero(sizeof(*pStream));

  pStream->stream = stream;
  pStream->stream->dwError = 0;
  pStream->nColorTblLen = 1;
  pStream->cur_fmt.dwEffects = CFE_AUTOCOLOR | CFE_AUTOBACKCOLOR;
  pStream->cur_fmt.bUnderlineType = CFU_UNDERLINE;
  return pStream;
}
