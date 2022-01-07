
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int hwndSelf; } ;
typedef TYPE_1__ EDITSTATE ;




 int ERR (char*) ;
 int SendMessageW (int ,int const,int ,int) ;




 int const WM_UNDO ;

__attribute__((used)) static void EDIT_ContextMenuCommand(EDITSTATE *es, UINT id)
{
 switch (id) {
  case 132:
                        SendMessageW(es->hwndSelf, WM_UNDO, 0, 0);
   break;
  case 129:
                        SendMessageW(es->hwndSelf, 129, 0, 0);
   break;
  case 130:
                        SendMessageW(es->hwndSelf, 130, 0, 0);
   break;
  case 128:
                        SendMessageW(es->hwndSelf, 128, 0, 0);
   break;
  case 131:
                        SendMessageW(es->hwndSelf, 131, 0, 0);
   break;
  case 133:
                        SendMessageW(es->hwndSelf, 133, 0, -1);
   break;
  default:
   ERR("unknown menu item, please report\n");
   break;
 }
}
