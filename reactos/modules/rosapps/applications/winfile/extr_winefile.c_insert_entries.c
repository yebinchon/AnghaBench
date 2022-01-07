
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dwFileAttributes; char* cFileName; } ;
struct TYPE_8__ {struct TYPE_8__* down; scalar_t__ expanded; TYPE_1__ data; struct TYPE_8__* next; } ;
struct TYPE_7__ {int hwnd; scalar_t__ treePane; } ;
typedef TYPE_2__ Pane ;
typedef int LPCWSTR ;
typedef int LPARAM ;
typedef TYPE_3__ Entry ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_SYSTEM ;


 int LB_INSERTSTRING ;
 int SW_HIDE ;
 int SW_SHOW ;
 int SendMessageW (int ,int ,int,int ) ;
 int ShowWindow (int ,int ) ;
 int TF_DIRECTORIES ;
 int TF_DOCUMENTS ;
 int TF_HIDDEN ;
 int TF_OTHERS ;
 int TF_PROGRAMS ;
 int get_file_type (char*) ;
 int pattern_imatch (char*,int ) ;

__attribute__((used)) static int insert_entries(Pane* pane, Entry* dir, LPCWSTR pattern, int filter_flags, int idx)
{
 Entry* entry = dir;

 if (!entry)
  return idx;

 ShowWindow(pane->hwnd, SW_HIDE);

 for(; entry; entry=entry->next) {
  if (pane->treePane && !(entry->data.dwFileAttributes&FILE_ATTRIBUTE_DIRECTORY))
   continue;

  if (entry->data.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {

   if (pane->treePane && entry->data.cFileName[0] == '.')
                                if (entry->data.cFileName[1] == '\0' ||
                                    (entry->data.cFileName[1] == '.' &&
                                    entry->data.cFileName[2] == '\0'))
     continue;


   if (!pane->treePane && !(filter_flags&TF_DIRECTORIES))
    continue;
  }


  if (pattern)
   if (!pattern_imatch(entry->data.cFileName, pattern))
    continue;


  if (!(filter_flags&TF_HIDDEN) && (entry->data.dwFileAttributes&(FILE_ATTRIBUTE_HIDDEN|FILE_ATTRIBUTE_SYSTEM)))
   continue;


  if ((filter_flags&(TF_PROGRAMS|TF_DOCUMENTS|TF_OTHERS)) != (TF_PROGRAMS|TF_DOCUMENTS|TF_OTHERS))
   switch(get_file_type(entry->data.cFileName)) {
     case 128:
      if (!(filter_flags & TF_PROGRAMS))
     continue;
    break;

     case 129:
    if (!(filter_flags & TF_DOCUMENTS))
     continue;
    break;

     default:
    if (!(filter_flags & TF_OTHERS))
     continue;
   }

  if (idx != -1)
   idx++;

  SendMessageW(pane->hwnd, LB_INSERTSTRING, idx, (LPARAM)entry);

  if (pane->treePane && entry->expanded)
   idx = insert_entries(pane, entry->down, pattern, filter_flags, idx);
 }

 ShowWindow(pane->hwnd, SW_SHOW);

 return idx;
}
