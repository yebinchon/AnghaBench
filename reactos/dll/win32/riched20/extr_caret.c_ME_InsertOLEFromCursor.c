
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct re_object {int entry; } ;
typedef char WCHAR ;
struct TYPE_12__ {struct re_object* reobj; } ;
struct TYPE_13__ {TYPE_1__ run; } ;
struct TYPE_15__ {TYPE_2__ member; } ;
struct TYPE_14__ {int reobj_list; } ;
typedef int REOBJECT ;
typedef TYPE_3__ ME_TextEditor ;
typedef int ME_Style ;
typedef TYPE_4__ ME_DisplayItem ;


 int MERF_GRAPHICS ;
 int ME_DeleteSelection (TYPE_3__*) ;
 int * ME_GetInsertStyle (TYPE_3__*,int) ;
 TYPE_4__* ME_InternalInsertTextFromCursor (TYPE_3__*,int,char*,int,int *,int ) ;
 scalar_t__ ME_IsSelection (TYPE_3__*) ;
 scalar_t__ ME_PrevRun (int *,TYPE_4__**,int ) ;
 int ME_ReleaseStyle (int *) ;
 int TRUE ;
 struct re_object* create_re_object (int const*) ;
 int list_add_after (int *,int *) ;
 int list_add_head (int *,int *) ;

void ME_InsertOLEFromCursor(ME_TextEditor *editor, const REOBJECT* reo, int nCursor)
{
  ME_Style *pStyle = ME_GetInsertStyle(editor, nCursor);
  ME_DisplayItem *di;
  WCHAR space = ' ';
  ME_DisplayItem *di_prev = ((void*)0);
  struct re_object *reobj_prev = ((void*)0);


  if (ME_IsSelection(editor))
    ME_DeleteSelection(editor);

  di = ME_InternalInsertTextFromCursor(editor, nCursor, &space, 1, pStyle,
                                       MERF_GRAPHICS);
  di->member.run.reobj = create_re_object(reo);

  di_prev = di;
  while (ME_PrevRun(((void*)0), &di_prev, TRUE))
  {
    if (di_prev->member.run.reobj)
    {
      reobj_prev = di_prev->member.run.reobj;
      break;
    }
  }
  if (reobj_prev)
    list_add_after(&reobj_prev->entry, &di->member.run.reobj->entry);
  else
    list_add_head(&editor->reobj_list, &di->member.run.reobj->entry);

  ME_ReleaseStyle(pStyle);
}
