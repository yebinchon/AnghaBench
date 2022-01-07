
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {scalar_t__ right; scalar_t__ left; } ;
struct TYPE_20__ {scalar_t__ selection_start; scalar_t__ selection_end; scalar_t__ text_width; scalar_t__ buffer_limit; scalar_t__ text; int style; scalar_t__ line_count; int text_length; char* undo_text; scalar_t__ undo_insert_count; scalar_t__ undo_position; scalar_t__ x_offset; int flags; TYPE_1__ format_rect; } ;
typedef char* LPWSTR ;
typedef char* LPCWSTR ;
typedef scalar_t__ INT ;
typedef scalar_t__ HRGN ;
typedef TYPE_2__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 int CharLowerBuffW (char*,scalar_t__) ;
 int CharUpperBuffW (char*,scalar_t__) ;
 scalar_t__ CreateRectRgn (int ,int ,int ,int ) ;
 int DeleteObject (scalar_t__) ;
 int EDIT_BuildLineDefs_ML (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int EDIT_CalcLineWidth_SL (TYPE_2__*) ;
 int EDIT_EM_EmptyUndoBuffer (TYPE_2__*) ;
 int EDIT_EM_ScrollCaret (TYPE_2__*) ;
 int EDIT_EM_SetSel (TYPE_2__*,scalar_t__,scalar_t__,int ) ;
 int EDIT_InvalidateUniscribeData (TYPE_2__*) ;
 int EDIT_MakeFit (TYPE_2__*,scalar_t__) ;
 int EDIT_MakeUndoFit (TYPE_2__*,scalar_t__) ;
 int EDIT_NOTIFY_PARENT (TYPE_2__*,int ) ;
 int EDIT_UpdateScrollInfo (TYPE_2__*) ;
 int EDIT_UpdateText (TYPE_2__*,int *,int ) ;
 int EDIT_UpdateTextRegion (TYPE_2__*,scalar_t__,int ) ;
 int EF_MODIFIED ;
 int EF_UPDATE ;
 int EN_CHANGE ;
 int EN_MAXTEXT ;
 int ES_AUTOHSCROLL ;
 int ES_AUTOVSCROLL ;
 int ES_CENTER ;
 int ES_LOWERCASE ;
 int ES_MULTILINE ;
 int ES_RIGHT ;
 int ES_UPPERCASE ;
 int FALSE ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,char*) ;
 int ORDER_UINT (scalar_t__,scalar_t__) ;
 int TRACE (char*,...) ;
 int TRUE ;
 scalar_t__ abs (scalar_t__) ;
 int debugstr_w (scalar_t__) ;
 scalar_t__ get_text_length (TYPE_2__*) ;
 scalar_t__ get_vertical_line_count (TYPE_2__*) ;
 int memcpy (char*,char*,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int strcpyW (scalar_t__,scalar_t__) ;
 scalar_t__ strlenW (char*) ;
 int text_buffer_changed (TYPE_2__*) ;

__attribute__((used)) static void EDIT_EM_ReplaceSel(EDITSTATE *es, BOOL can_undo, LPCWSTR lpsz_replace, BOOL send_update, BOOL honor_limit)
{
 UINT strl = strlenW(lpsz_replace);
 UINT tl = get_text_length(es);
 UINT utl;
 UINT s;
 UINT e;
 UINT i;
 UINT size;
 LPWSTR p;
 HRGN hrgn = 0;
 LPWSTR buf = ((void*)0);
 UINT bufl;

 TRACE("%s, can_undo %d, send_update %d\n",
     debugstr_w(lpsz_replace), can_undo, send_update);

 s = es->selection_start;
 e = es->selection_end;

 EDIT_InvalidateUniscribeData(es);
 if ((s == e) && !strl)
  return;

 ORDER_UINT(s, e);

 size = tl - (e - s) + strl;
 if (!size)
  es->text_width = 0;



 if ((honor_limit) && (size > es->buffer_limit)) {
  EDIT_NOTIFY_PARENT(es, EN_MAXTEXT);

  if (es->buffer_limit < (tl - (e-s)))
   strl = 0;
  else
   strl = min(strl, es->buffer_limit - (tl - (e-s)));
 }

 if (!EDIT_MakeFit(es, tl - (e - s) + strl))
  return;

 if (e != s) {

  TRACE("deleting stuff.\n");
  bufl = e - s;
  buf = HeapAlloc(GetProcessHeap(), 0, (bufl + 1) * sizeof(WCHAR));
  if (!buf) return;
  memcpy(buf, es->text + s, bufl * sizeof(WCHAR));
  buf[bufl] = 0;

  strcpyW(es->text + s, es->text + e);
                text_buffer_changed(es);
 }
 if (strl) {

  tl = get_text_length(es);
  TRACE("inserting stuff (tl %d, strl %d, selstart %d (%s), text %s)\n", tl, strl, s, debugstr_w(es->text + s), debugstr_w(es->text));
  for (p = es->text + tl ; p >= es->text + s ; p--)
   p[strl] = p[0];
  for (i = 0 , p = es->text + s ; i < strl ; i++)
   p[i] = lpsz_replace[i];
  if(es->style & ES_UPPERCASE)
   CharUpperBuffW(p, strl);
  else if(es->style & ES_LOWERCASE)
   CharLowerBuffW(p, strl);
                text_buffer_changed(es);
 }
 if (es->style & ES_MULTILINE)
 {
  INT st = min(es->selection_start, es->selection_end);
  INT vlc = get_vertical_line_count(es);

  hrgn = CreateRectRgn(0, 0, 0, 0);
  EDIT_BuildLineDefs_ML(es, st, st + strl,
    strl - abs(es->selection_end - es->selection_start), hrgn);

  if (honor_limit && !(es->style & ES_AUTOVSCROLL) && (es->line_count > vlc)) {
   if (strl)
    strcpyW(es->text + e, es->text + e + strl);
   if (e != s)
    for (i = 0 , p = es->text ; i < e - s ; i++)
     p[i + s] = buf[i];
                        text_buffer_changed(es);
   EDIT_BuildLineDefs_ML(es, s, e,
    abs(es->selection_end - es->selection_start) - strl, hrgn);
   strl = 0;
   e = s;
   hrgn = CreateRectRgn(0, 0, 0, 0);
   EDIT_NOTIFY_PARENT(es, EN_MAXTEXT);
  }
 }
 else {
  INT fw = es->format_rect.right - es->format_rect.left;
  EDIT_InvalidateUniscribeData(es);
  EDIT_CalcLineWidth_SL(es);

  if (honor_limit && !(es->style & ES_AUTOHSCROLL) && (es->text_width > fw)) {
   while ((es->text_width > fw) && s + strl >= s) {
    strcpyW(es->text + s + strl - 1, es->text + s + strl);
    strl--;
    es->text_length = -1;
    EDIT_InvalidateUniscribeData(es);
    EDIT_CalcLineWidth_SL(es);
   }
                        text_buffer_changed(es);
   EDIT_NOTIFY_PARENT(es, EN_MAXTEXT);
  }
 }

 if (e != s) {
  if (can_undo) {
   utl = strlenW(es->undo_text);
   if (!es->undo_insert_count && (*es->undo_text && (s == es->undo_position))) {

    EDIT_MakeUndoFit(es, utl + e - s);
    memcpy(es->undo_text + utl, buf, (e - s)*sizeof(WCHAR));
    (es->undo_text + utl)[e - s] = 0;
   } else if (!es->undo_insert_count && (*es->undo_text && (e == es->undo_position))) {

    EDIT_MakeUndoFit(es, utl + e - s);
    for (p = es->undo_text + utl ; p >= es->undo_text ; p--)
     p[e - s] = p[0];
    for (i = 0 , p = es->undo_text ; i < e - s ; i++)
     p[i] = buf[i];
    es->undo_position = s;
   } else {

    EDIT_MakeUndoFit(es, e - s);
    memcpy(es->undo_text, buf, (e - s)*sizeof(WCHAR));
    es->undo_text[e - s] = 0;
    es->undo_position = s;
   }

   es->undo_insert_count = 0;
  } else
   EDIT_EM_EmptyUndoBuffer(es);
 }
 if (strl) {
  if (can_undo) {
   if ((s == es->undo_position) ||
    ((es->undo_insert_count) &&
    (s == es->undo_position + es->undo_insert_count)))




    es->undo_insert_count += strl;
   else {

    es->undo_position = s;
    es->undo_insert_count = strl;

    *es->undo_text = '\0';
   }
  } else
   EDIT_EM_EmptyUndoBuffer(es);
 }

 HeapFree(GetProcessHeap(), 0, buf);

 s += strl;


 if (es->style & (ES_RIGHT | ES_CENTER))
 {
  INT delta = strl - abs(es->selection_end - es->selection_start);

  if (delta < 0 && es->x_offset)
  {
   if (abs(delta) > es->x_offset)
    es->x_offset = 0;
   else
    es->x_offset += delta;
  }
 }

 EDIT_EM_SetSel(es, s, s, FALSE);
 es->flags |= EF_MODIFIED;
 if (send_update) es->flags |= EF_UPDATE;
 if (hrgn)
 {
  EDIT_UpdateTextRegion(es, hrgn, TRUE);
  DeleteObject(hrgn);
 }
 else
            EDIT_UpdateText(es, ((void*)0), TRUE);

 EDIT_EM_ScrollCaret(es);


 EDIT_UpdateScrollInfo(es);


        if(send_update || (es->flags & EF_UPDATE))
 {
     es->flags &= ~EF_UPDATE;
     EDIT_NOTIFY_PARENT(es, EN_CHANGE);
 }
 EDIT_InvalidateUniscribeData(es);
}
