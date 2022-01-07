
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quartz_state_t ;


 int CGDisplayRestoreColorSyncSettings () ;

__attribute__((used)) static void
quartz_restore(quartz_state_t *state)
{
 CGDisplayRestoreColorSyncSettings();
}
