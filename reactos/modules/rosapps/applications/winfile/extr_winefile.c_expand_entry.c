
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int hwnd; } ;
struct TYPE_12__ {void* header_wdths_ok; TYPE_4__ left; } ;
struct TYPE_10__ {char* cFileName; int dwFileAttributes; } ;
struct TYPE_11__ {void* expanded; TYPE_1__ data; struct TYPE_11__* next; struct TYPE_11__* down; } ;
typedef int LPARAM ;
typedef TYPE_2__ Entry ;
typedef TYPE_3__ ChildWnd ;
typedef void* BOOL ;


 void* FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int LB_FINDSTRING ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TF_ALL ;
 void* TRUE ;
 scalar_t__ calc_widths (TYPE_4__*,void*) ;
 int insert_entries (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int set_header (TYPE_4__*) ;

__attribute__((used)) static BOOL expand_entry(ChildWnd* child, Entry* dir)
{
 int idx;
 Entry* p;

 if (!dir || dir->expanded || !dir->down)
  return FALSE;

 p = dir->down;

 if (p->data.cFileName[0]=='.' && p->data.cFileName[1]=='\0' && p->next) {
  p = p->next;

  if (p->data.cFileName[0]=='.' && p->data.cFileName[1]=='.' &&
    p->data.cFileName[2]=='\0' && p->next)
   p = p->next;
 }


 if (!(p->data.dwFileAttributes&FILE_ATTRIBUTE_DIRECTORY))
  return FALSE;

 idx = SendMessageW(child->left.hwnd, LB_FINDSTRING, 0, (LPARAM)dir);

 dir->expanded = TRUE;


 insert_entries(&child->left, p, ((void*)0), TF_ALL, idx);

 if (!child->header_wdths_ok) {
  if (calc_widths(&child->left, FALSE)) {
   set_header(&child->left);

   child->header_wdths_ok = TRUE;
  }
 }

 return TRUE;
}
