
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GetKeyboardState (int*) ;
 int SetKeyboardState (int*) ;
 int ok (int,char*) ;

__attribute__((used)) static BOOL release_key(int vk)
{
  BYTE key_state[256];
  BOOL result;

  result = GetKeyboardState(key_state);
  ok(result, "GetKeyboardState failed.\n");
  if (!result) return FALSE;
  key_state[vk] &= ~0x80;
  result = SetKeyboardState(key_state);
  ok(result, "SetKeyboardState failed.\n");
  return result != 0;
}
