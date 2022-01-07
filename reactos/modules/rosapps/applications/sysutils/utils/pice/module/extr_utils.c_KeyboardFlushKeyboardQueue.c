
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetKeyData () ;
 int GetKeyStatus () ;
 int KeStallExecutionProcessor (int) ;
 int OUTPUT_BUFFER_FULL ;

void KeyboardFlushKeyboardQueue(void)
{

 KeStallExecutionProcessor(10);
    while(GetKeyStatus()&OUTPUT_BUFFER_FULL)
    {
        GetKeyData();

  KeStallExecutionProcessor(10);
    }
}
