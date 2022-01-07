
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int MaxCharSize; } ;
struct TYPE_9__ {int flags; int codepage; } ;
struct TYPE_8__ {int styleFlags; int nParagraphs; int bEmulateVersion10; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef TYPE_2__ GETTEXTLENGTHEX ;
typedef TYPE_3__ CPINFO ;


 int ERR (char*,int) ;
 int ES_MULTILINE ;
 int E_INVALIDARG ;
 int FIXME (char*) ;
 int GTL_CLOSE ;
 int GTL_NUMBYTES ;
 int GTL_NUMCHARS ;
 int GTL_PRECISE ;
 int GTL_USECRLF ;
 scalar_t__ GetCPInfo (int,TYPE_3__*) ;
 int ME_GetTextLength (TYPE_1__*) ;

int ME_GetTextLengthEx(ME_TextEditor *editor, const GETTEXTLENGTHEX *how)
{
  int length;

  if (how->flags & GTL_PRECISE && how->flags & GTL_CLOSE)
    return E_INVALIDARG;
  if (how->flags & GTL_NUMCHARS && how->flags & GTL_NUMBYTES)
    return E_INVALIDARG;

  length = ME_GetTextLength(editor);

  if ((editor->styleFlags & ES_MULTILINE)
        && (how->flags & GTL_USECRLF)
        && !editor->bEmulateVersion10)
    length += editor->nParagraphs - 1;

  if (how->flags & GTL_NUMBYTES ||
      (how->flags & GTL_PRECISE &&
       !(how->flags & GTL_NUMCHARS)))
  {
    CPINFO cpinfo;

    if (how->codepage == 1200)
      return length * 2;
    if (how->flags & GTL_PRECISE)
      FIXME("GTL_PRECISE flag unsupported. Using GTL_CLOSE\n");
    if (GetCPInfo(how->codepage, &cpinfo))
      return length * cpinfo.MaxCharSize;
    ERR("Invalid codepage %u\n", how->codepage);
    return E_INVALIDARG;
  }
  return length;
}
