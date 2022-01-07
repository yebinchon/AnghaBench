
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef char char_u ;
typedef char UINT ;
struct TYPE_14__ {int row; int col; scalar_t__ menu_is_active; } ;
struct TYPE_13__ {char key_sym; char vim_code1; int vim_code0; } ;
struct TYPE_12__ {scalar_t__ message; char wParam; scalar_t__ lParam; int hwnd; } ;
struct TYPE_11__ {int y; int x; } ;
typedef TYPE_1__ POINT ;
typedef TYPE_2__ MSG ;
typedef int DWORD ;



 char Ctrl_AT ;
 char Ctrl_C ;
 char Ctrl_HAT ;
 char Ctrl__ ;
 int FALSE ;
 int FILL_X (int ) ;
 int FILL_Y (int ) ;
 int GetKeyState (char) ;
 int HandleMouseHide (scalar_t__,scalar_t__) ;
 scalar_t__ IS_SPECIAL (int) ;


 char KS_MODIFIER ;
 int K_CSI ;
 char K_SECOND (int) ;

 char K_THIRD (int) ;
 int MOD_MASK_ALT ;
 int MOD_MASK_CTRL ;
 int MOD_MASK_SHIFT ;
 char MapVirtualKey (char,int) ;
 int MapWindowPoints (int ,int ,TYPE_1__*,int) ;
 int MyTranslateMessage (TYPE_2__*) ;
 char NUL ;
 int PostMessage (int ,scalar_t__,char,scalar_t__) ;
 scalar_t__ STRLEN (char*) ;
 int State ;
 int TO_SPECIAL (int,char) ;
 int TRUE ;
 char VK_CANCEL ;
 char VK_CONTROL ;
 char VK_F10 ;
 char VK_MENU ;
 char VK_SHIFT ;
 char VK_SPACE ;
 scalar_t__ WM_IME_NOTIFY ;
 scalar_t__ WM_IME_STARTCOMPOSITION ;
 scalar_t__ WM_KEYDOWN ;
 scalar_t__ WM_KEYUP ;
 scalar_t__ WM_NETBEANS ;
 scalar_t__ WM_OLE ;
 scalar_t__ WM_SYSKEYDOWN ;
 scalar_t__ WM_USER ;
 int _OnImeNotify (int ,int ,int ) ;
 int add_to_input_buf (char*,int) ;
 int char_to_string (int,char*,int,int ) ;
 int * check_map (char*,int ,int ,int ,int ,int *,int *) ;
 scalar_t__ dead_key ;
 int global_ime_set_font (int *) ;
 int global_ime_set_position (TYPE_1__*) ;
 int got_int ;
 TYPE_7__ gui ;
 scalar_t__ im_get_status () ;
 int netbeans_read () ;
 int norm_logfont ;
 int pDispatchMessage (TYPE_2__*) ;
 int pGetMessage (TYPE_2__*,int *,int ,int ) ;
 scalar_t__ pIsDialogMessage (int *,TYPE_2__*) ;
 int * s_findrep_hwnd ;
 int s_hwnd ;
 int s_textArea ;
 int simplify_key (int,int*) ;
 scalar_t__ sniff_request_waiting ;
 TYPE_3__* special_keys ;
 int trash_input_buf () ;
 int vim_free (char*) ;
 scalar_t__ want_sniff_request ;

__attribute__((used)) static void
process_message(void)
{
    MSG msg;
    UINT vk = 0;
    char_u string[40];
    int i;
    int modifiers = 0;
    int key;




    pGetMessage(&msg, ((void*)0), 0, 0);
    if (msg.message == WM_KEYDOWN || msg.message == WM_SYSKEYDOWN)
    {
 vk = (int) msg.wParam;

 if (dead_key && vk != VK_SHIFT && vk != VK_MENU && vk != VK_CONTROL)
 {
     dead_key = 0;


     if (vk < 'A' || vk > 'Z' || (GetKeyState(VK_CONTROL) & 0x8000))
     {
  MSG dm;

  dm.message = msg.message;
  dm.hwnd = msg.hwnd;
  dm.wParam = VK_SPACE;
  MyTranslateMessage(&dm);
  if (vk != VK_SPACE)
      PostMessage(msg.hwnd, msg.message, msg.wParam, msg.lParam);
  return;
     }
 }


 if (vk == VK_CANCEL)
 {
     trash_input_buf();
     got_int = TRUE;
     string[0] = Ctrl_C;
     add_to_input_buf(string, 1);
 }

 for (i = 0; special_keys[i].key_sym != 0; i++)
 {

     if (special_keys[i].key_sym == vk
      && (vk != VK_SPACE || !(GetKeyState(VK_MENU) & 0x8000)))
     {
  if (GetKeyState(VK_SHIFT) & 0x8000)
      modifiers |= MOD_MASK_SHIFT;
  if (GetKeyState(VK_CONTROL) & 0x8000)
      modifiers |= MOD_MASK_CTRL;
  if (GetKeyState(VK_MENU) & 0x8000)
      modifiers |= MOD_MASK_ALT;

  if (special_keys[i].vim_code1 == NUL)
      key = special_keys[i].vim_code0;
  else
      key = TO_SPECIAL(special_keys[i].vim_code0,
         special_keys[i].vim_code1);
  key = simplify_key(key, &modifiers);
  if (key == 131)
      key = K_CSI;

  if (modifiers)
  {
      string[0] = 131;
      string[1] = KS_MODIFIER;
      string[2] = modifiers;
      add_to_input_buf(string, 3);
  }

  if (IS_SPECIAL(key))
  {
      string[0] = 131;
      string[1] = K_SECOND(key);
      string[2] = K_THIRD(key);
      add_to_input_buf(string, 3);
  }
  else
  {
      int len;


      len = char_to_string(key, string, 40, FALSE);
      add_to_input_buf(string, len);
  }
  break;
     }
 }
 if (special_keys[i].key_sym == 0)
 {



     if (vk != 0xff
      && (GetKeyState(VK_CONTROL) & 0x8000)
      && !(GetKeyState(VK_SHIFT) & 0x8000)
      && !(GetKeyState(VK_MENU) & 0x8000))
     {

  if (vk == '6' || MapVirtualKey(vk, 2) == (UINT)'^')
  {
      string[0] = Ctrl_HAT;
      add_to_input_buf(string, 1);
  }

  else if (vk == 0xBD)
  {
      string[0] = Ctrl__;
      add_to_input_buf(string, 1);
  }

  else if (vk == '2' || MapVirtualKey(vk, 2) == (UINT)'@')
  {
      string[0] = Ctrl_AT;
      add_to_input_buf(string, 1);
  }
  else
      MyTranslateMessage(&msg);
     }
     else
  MyTranslateMessage(&msg);
 }
    }
 pDispatchMessage(&msg);
}
