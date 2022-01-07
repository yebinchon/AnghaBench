
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ExtensionState { ____Placeholder_ExtensionState } ExtensionState ;






 int do_load () ;
 int extension_current_state () ;
 int loaded ;

__attribute__((used)) static void inline extension_check()
{
 if (!loaded)
 {
  enum ExtensionState state = extension_current_state();

  switch (state)
  {
   case 129:







   case 131:
    do_load();
    return;
   case 128:
   case 130:
    return;
  }
 }
}
