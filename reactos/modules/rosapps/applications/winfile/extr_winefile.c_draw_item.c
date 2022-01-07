
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_22__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef enum IMAGE { ____Placeholder_IMAGE } IMAGE ;
typedef char WCHAR ;
typedef int ULONGLONG ;
struct TYPE_29__ {int nNumberOfLinks; int nFileIndexLow; int nFileIndexHigh; } ;
struct TYPE_28__ {int dwFileAttributes; char* cFileName; int nFileSizeLow; int ftLastWriteTime; int ftLastAccessTime; int ftCreationTime; scalar_t__ nFileSizeHigh; } ;
struct TYPE_33__ {int level; TYPE_4__ bhfi; scalar_t__ bhfi_valid; TYPE_3__ data; int hicon; TYPE_2__* next; struct TYPE_33__* up; } ;
struct TYPE_30__ {int left; int top; int right; int bottom; } ;
struct TYPE_32__ {int itemState; TYPE_5__ rcItem; int hDC; } ;
struct TYPE_31__ {int visible_cols; int* widths; scalar_t__ treePane; } ;
struct TYPE_25__ {int dwFileAttributes; } ;
struct TYPE_27__ {TYPE_1__ data; } ;
struct TYPE_26__ {int himl; } ;
typedef TYPE_5__ RECT ;
typedef TYPE_6__ Pane ;
typedef TYPE_7__* LPDRAWITEMSTRUCT ;
typedef scalar_t__ HRGN ;
typedef int HICON ;
typedef scalar_t__ HBRUSH ;
typedef TYPE_8__ Entry ;
typedef int DWORD ;
typedef int COLORREF ;


 int BUFFER_LEN ;
 int CLR_DEFAULT ;
 int COLOR_COMPRESSED ;
 int COLOR_SELECTION ;
 int COLUMNS ;
 int COL_ATTRIBUTES ;
 int COL_DATE ;
 int COL_INDEX ;
 int COL_LINKS ;
 int COL_SIZE ;
 int COL_TIME ;
 scalar_t__ CreateRectRgn (int ,int ,int ,int ) ;
 scalar_t__ CreateRectRgnIndirect (TYPE_5__*) ;
 scalar_t__ CreateSolidBrush (int ) ;
 int DI_NORMAL ;
 int DT_CENTER ;
 int DT_RIGHT ;
 int DeleteObject (scalar_t__) ;
 int DrawIconEx (int ,int,int,int ,int,int ,int ,int ,int ) ;
 int ExtSelectClipRgn (int ,scalar_t__,int ) ;
 int FILE_ATTRIBUTE_ARCHIVE ;
 int FILE_ATTRIBUTE_COMPRESSED ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_ENCRYPTED ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_ATTRIBUTE_NOT_CONTENT_INDEXED ;
 int FILE_ATTRIBUTE_OFFLINE ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_ATTRIBUTE_REPARSE_POINT ;
 int FILE_ATTRIBUTE_SPARSE_FILE ;
 int FILE_ATTRIBUTE_SYSTEM ;
 int FILE_ATTRIBUTE_TEMPORARY ;


 int FillRect (int ,TYPE_5__*,scalar_t__) ;
 int GetClipRgn (int ,scalar_t__) ;
 int GetSystemMetrics (int ) ;
 TYPE_22__ Globals ;
 int ILD_NORMAL ;
 int IMAGE_HEIGHT ;
 int IMAGE_WIDTH ;
 int IMG_DOCUMENT ;
 int IMG_EXECUTABLE ;
 int IMG_FILE ;
 int IMG_FOLDER ;
 int IMG_FOLDER_CUR ;
 int IMG_FOLDER_UP ;
 int IMG_NONE ;
 int IMG_OPEN_FOLDER ;
 int ImageList_DrawEx (int ,int,int ,int,int,int,int,int ,int ,int ) ;
 int LineTo (int ,int,int) ;
 int MoveToEx (int ,int,int,int ) ;
 int ODS_FOCUS ;
 int RGB (int,int,int) ;
 int RGN_AND ;
 int SM_CYSMICON ;
 int SelectClipRgn (int ,scalar_t__) ;
 int SetBkMode (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int TRANSPARENT ;
 int TREE_LINE_DX ;
 int calc_tabbed_width (TYPE_6__*,TYPE_7__*,int,char*) ;
 int calc_width (TYPE_6__*,TYPE_7__*,int,char*) ;
 int format_date (int *,char*,int) ;
 int format_longlong (char*,int) ;
 int get_file_type (char*) ;
 int lstrcpyW (char*,char const*) ;
 int output_number (TYPE_6__*,TYPE_7__*,int,char*) ;
 int output_tabbed_text (TYPE_6__*,TYPE_7__*,int,char*) ;
 int output_text (TYPE_6__*,TYPE_7__*,int,char*,int ) ;
 char const* sNumFmt ;
 int wsprintfW (char*,char const*,int ,...) ;

__attribute__((used)) static void draw_item(Pane* pane, LPDRAWITEMSTRUCT dis, Entry* entry, int calcWidthCol)
{
 WCHAR buffer[BUFFER_LEN];
 DWORD attrs;
 int visible_cols = pane->visible_cols;
 COLORREF bkcolor, textcolor;
 RECT focusRect = dis->rcItem;
 HBRUSH hbrush;
 enum IMAGE img;
 int img_pos, cx;
 int col = 0;

 if (entry) {
  attrs = entry->data.dwFileAttributes;

  if (attrs & FILE_ATTRIBUTE_DIRECTORY) {
   if (entry->data.cFileName[0] == '.' && entry->data.cFileName[1] == '.'
     && entry->data.cFileName[2] == '\0')
    img = IMG_FOLDER_UP;
   else if (entry->data.cFileName[0] == '.' && entry->data.cFileName[1] == '\0')
    img = IMG_FOLDER_CUR;
                        else if (pane->treePane && (dis->itemState&ODS_FOCUS))
    img = IMG_OPEN_FOLDER;
   else
    img = IMG_FOLDER;
  } else {
   switch(get_file_type(entry->data.cFileName)) {
     case 128: img = IMG_EXECUTABLE; break;
     case 129: img = IMG_DOCUMENT; break;
     default: img = IMG_FILE;
   }
  }
 } else {
  attrs = 0;
  img = IMG_NONE;
 }

 if (pane->treePane) {
  if (entry) {
   img_pos = dis->rcItem.left + entry->level*(IMAGE_WIDTH+TREE_LINE_DX);

   if (calcWidthCol == -1) {
    int x;
    int y = dis->rcItem.top + IMAGE_HEIGHT/2;
    Entry* up;
    RECT rt_clip;
    HRGN hrgn_org = CreateRectRgn(0, 0, 0, 0);
    HRGN hrgn;

    rt_clip.left = dis->rcItem.left;
    rt_clip.top = dis->rcItem.top;
    rt_clip.right = dis->rcItem.left+pane->widths[col];
    rt_clip.bottom = dis->rcItem.bottom;

    hrgn = CreateRectRgnIndirect(&rt_clip);

    if (!GetClipRgn(dis->hDC, hrgn_org)) {
     DeleteObject(hrgn_org);
     hrgn_org = 0;
    }

    ExtSelectClipRgn(dis->hDC, hrgn, RGN_AND);
    DeleteObject(hrgn);

    if ((up=entry->up) != ((void*)0)) {
     MoveToEx(dis->hDC, img_pos-IMAGE_WIDTH/2, y, 0);
     LineTo(dis->hDC, img_pos-2, y);

     x = img_pos - IMAGE_WIDTH/2;

     do {
      x -= IMAGE_WIDTH+TREE_LINE_DX;

      if (up->next
       && (up->next->data.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
       ) {
       MoveToEx(dis->hDC, x, dis->rcItem.top, 0);
       LineTo(dis->hDC, x, dis->rcItem.bottom);
      }
     } while((up=up->up) != ((void*)0));
    }

    x = img_pos - IMAGE_WIDTH/2;

    MoveToEx(dis->hDC, x, dis->rcItem.top, 0);
    LineTo(dis->hDC, x, y);

    if (entry->next
                                        && (entry->next->data.dwFileAttributes&FILE_ATTRIBUTE_DIRECTORY))
     LineTo(dis->hDC, x, dis->rcItem.bottom);

    SelectClipRgn(dis->hDC, hrgn_org);
    if (hrgn_org) DeleteObject(hrgn_org);
   } else if (calcWidthCol==col || calcWidthCol==COLUMNS) {
    int right = img_pos + IMAGE_WIDTH - TREE_LINE_DX;

    if (right > pane->widths[col])
     pane->widths[col] = right;
   }
  } else {
   img_pos = dis->rcItem.left;
  }
 } else {
  img_pos = dis->rcItem.left;

  if (calcWidthCol==col || calcWidthCol==COLUMNS)
   pane->widths[col] = IMAGE_WIDTH;
 }

 if (calcWidthCol == -1) {
  focusRect.left = img_pos -2;

  if (attrs & FILE_ATTRIBUTE_COMPRESSED)
   textcolor = COLOR_COMPRESSED;
  else
   textcolor = RGB(0,0,0);

  if (dis->itemState & ODS_FOCUS) {
   textcolor = RGB(255,255,255);
   bkcolor = COLOR_SELECTION;
  } else {
   bkcolor = RGB(255,255,255);
  }

  hbrush = CreateSolidBrush(bkcolor);
  FillRect(dis->hDC, &focusRect, hbrush);
  DeleteObject(hbrush);

  SetBkMode(dis->hDC, TRANSPARENT);
  SetTextColor(dis->hDC, textcolor);

  cx = pane->widths[col];

  if (cx && img!=IMG_NONE) {
   if (cx > IMAGE_WIDTH)
    cx = IMAGE_WIDTH;

   if (entry->hicon && entry->hicon!=(HICON)-1)
    DrawIconEx(dis->hDC, img_pos, dis->rcItem.top, entry->hicon, cx, GetSystemMetrics(SM_CYSMICON), 0, 0, DI_NORMAL);
   else
    ImageList_DrawEx(Globals.himl, img, dis->hDC,
         img_pos, dis->rcItem.top, cx,
         IMAGE_HEIGHT, bkcolor, CLR_DEFAULT, ILD_NORMAL);
  }
 }

 if (!entry)
  return;

 col++;


 if (calcWidthCol == -1)
  output_text(pane, dis, col, entry->data.cFileName, 0);
 else if (calcWidthCol==col || calcWidthCol==COLUMNS)
  calc_width(pane, dis, col, entry->data.cFileName);

 col++;


 if (visible_cols & COL_SIZE) {
                format_longlong( buffer, ((ULONGLONG)entry->data.nFileSizeHigh << 32) | entry->data.nFileSizeLow );

                if (calcWidthCol == -1)
                        output_number(pane, dis, col, buffer);
                else if (calcWidthCol==col || calcWidthCol==COLUMNS)
                        calc_width(pane, dis, col, buffer);

  col++;
 }


 if (visible_cols & (COL_DATE|COL_TIME)) {
  format_date(&entry->data.ftCreationTime, buffer, visible_cols);
  if (calcWidthCol == -1)
   output_text(pane, dis, col, buffer, 0);
  else if (calcWidthCol==col || calcWidthCol==COLUMNS)
   calc_width(pane, dis, col, buffer);
  col++;

  format_date(&entry->data.ftLastAccessTime, buffer, visible_cols);
  if (calcWidthCol == -1)
   output_text(pane, dis, col, buffer, 0);
  else if (calcWidthCol==col || calcWidthCol==COLUMNS)
   calc_width(pane, dis, col, buffer);
  col++;

  format_date(&entry->data.ftLastWriteTime, buffer, visible_cols);
  if (calcWidthCol == -1)
   output_text(pane, dis, col, buffer, 0);
  else if (calcWidthCol==col || calcWidthCol==COLUMNS)
   calc_width(pane, dis, col, buffer);
  col++;
 }

 if (entry->bhfi_valid) {
  if (visible_cols & COL_INDEX) {
                        static const WCHAR fmtlow[] = {'%','X',0};
                        static const WCHAR fmthigh[] = {'%','X','%','0','8','X',0};

                        if (entry->bhfi.nFileIndexHigh)
                            wsprintfW(buffer, fmthigh,
                                     entry->bhfi.nFileIndexHigh, entry->bhfi.nFileIndexLow );
                        else
                            wsprintfW(buffer, fmtlow, entry->bhfi.nFileIndexLow );

   if (calcWidthCol == -1)
    output_text(pane, dis, col, buffer, DT_RIGHT);
   else if (calcWidthCol==col || calcWidthCol==COLUMNS)
    calc_width(pane, dis, col, buffer);

   col++;
  }

  if (visible_cols & COL_LINKS) {
   wsprintfW(buffer, sNumFmt, entry->bhfi.nNumberOfLinks);

   if (calcWidthCol == -1)
    output_text(pane, dis, col, buffer, DT_CENTER);
   else if (calcWidthCol==col || calcWidthCol==COLUMNS)
    calc_width(pane, dis, col, buffer);

   col++;
  }
 } else
  col += 2;


 if (visible_cols & COL_ATTRIBUTES) {
  static const WCHAR s11Tabs[] = {' ','\t',' ','\t',' ','\t',' ','\t',' ','\t',' ','\t',' ','\t',' ','\t',' ','\t',' ','\t',' ','\t',' ','\0'};
  lstrcpyW(buffer, s11Tabs);

  if (attrs & FILE_ATTRIBUTE_NORMAL) buffer[ 0] = 'N';
  else {
   if (attrs & FILE_ATTRIBUTE_READONLY) buffer[ 2] = 'R';
   if (attrs & FILE_ATTRIBUTE_HIDDEN) buffer[ 4] = 'H';
   if (attrs & FILE_ATTRIBUTE_SYSTEM) buffer[ 6] = 'S';
   if (attrs & FILE_ATTRIBUTE_ARCHIVE) buffer[ 8] = 'A';
   if (attrs & FILE_ATTRIBUTE_COMPRESSED) buffer[10] = 'C';
   if (attrs & FILE_ATTRIBUTE_DIRECTORY) buffer[12] = 'D';
   if (attrs & FILE_ATTRIBUTE_ENCRYPTED) buffer[14] = 'E';
   if (attrs & FILE_ATTRIBUTE_TEMPORARY) buffer[16] = 'T';
   if (attrs & FILE_ATTRIBUTE_SPARSE_FILE) buffer[18] = 'P';
   if (attrs & FILE_ATTRIBUTE_REPARSE_POINT) buffer[20] = 'Q';
   if (attrs & FILE_ATTRIBUTE_OFFLINE) buffer[22] = 'O';
   if (attrs & FILE_ATTRIBUTE_NOT_CONTENT_INDEXED) buffer[24] = 'X';
  }

  if (calcWidthCol == -1)
   output_tabbed_text(pane, dis, col, buffer);
  else if (calcWidthCol==col || calcWidthCol==COLUMNS)
   calc_tabbed_width(pane, dis, col, buffer);

  col++;
 }
}
