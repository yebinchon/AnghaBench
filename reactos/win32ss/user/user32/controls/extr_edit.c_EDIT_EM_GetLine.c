
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int WCHAR ;
struct TYPE_5__ {int style; scalar_t__ line_count; scalar_t__ text; } ;
typedef scalar_t__* LPWSTR ;
typedef scalar_t__* LPSTR ;
typedef scalar_t__ INT ;
typedef TYPE_1__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 scalar_t__ EDIT_EM_LineIndex (TYPE_1__*,scalar_t__) ;
 scalar_t__ EDIT_EM_LineLength (TYPE_1__*,scalar_t__) ;
 int ES_MULTILINE ;
 scalar_t__ WideCharToMultiByte (int ,int ,scalar_t__*,scalar_t__,scalar_t__*,scalar_t__,int *,int *) ;
 int memcpy (scalar_t__*,scalar_t__*,scalar_t__) ;

__attribute__((used)) static INT EDIT_EM_GetLine(EDITSTATE *es, INT line, LPWSTR dst, BOOL unicode)
{
 LPWSTR src;
 INT line_len, dst_len;
 INT i;

 if (es->style & ES_MULTILINE) {
  if (line >= es->line_count)
   return 0;
 } else
  line = 0;
 i = EDIT_EM_LineIndex(es, line);
 src = es->text + i;
 line_len = EDIT_EM_LineLength(es, i);
 dst_len = *(WORD *)dst;
 if(unicode)
 {
     if(dst_len <= line_len)
     {
  memcpy(dst, src, dst_len * sizeof(WCHAR));
  return dst_len;
     }
     else
     {
  memcpy(dst, src, line_len * sizeof(WCHAR));
  dst[line_len] = 0;
  return line_len;
     }
 }
 else
 {
     INT ret = WideCharToMultiByte(CP_ACP, 0, src, line_len, (LPSTR)dst, dst_len, ((void*)0), ((void*)0));
     if(!ret && line_len)
  return dst_len;
     if(ret < dst_len)
  ((LPSTR)dst)[ret] = 0;
     return ret;
 }
}
