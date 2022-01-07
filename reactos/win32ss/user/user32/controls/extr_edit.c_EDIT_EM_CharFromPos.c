
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int hwndSelf; } ;
struct TYPE_7__ {void* y; void* x; } ;
typedef int RECT ;
typedef TYPE_1__ POINT ;
typedef int LRESULT ;
typedef void* INT ;
typedef TYPE_2__ EDITSTATE ;


 void* EDIT_CharFromPos (TYPE_2__*,void*,void*,int *) ;
 int EDIT_EM_LineFromChar (TYPE_2__*,void*) ;
 int GetClientRect (int ,int *) ;
 int MAKELONG (void*,int ) ;
 int PtInRect (int *,TYPE_1__) ;

__attribute__((used)) static LRESULT EDIT_EM_CharFromPos(EDITSTATE *es, INT x, INT y)
{
 POINT pt;
 RECT rc;
 INT index;

 pt.x = x;
 pt.y = y;
 GetClientRect(es->hwndSelf, &rc);
 if (!PtInRect(&rc, pt))
  return -1;

 index = EDIT_CharFromPos(es, x, y, ((void*)0));
 return MAKELONG(index, EDIT_EM_LineFromChar(es, index));
}
