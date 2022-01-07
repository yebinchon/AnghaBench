
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int CoolSwitch ;
 int CoolSwitchColumns ;
 int CoolSwitchRows ;
 int TRACE (char*,int) ;
 int TRUE ;

BOOL LoadCoolSwitchSettings(void)
{
   CoolSwitch = TRUE;
   CoolSwitchRows = 3;
   CoolSwitchColumns = 7;



   TRACE("CoolSwitch: %d\n", CoolSwitch);
   TRACE("CoolSwitchRows: %d\n", CoolSwitchRows);
   TRACE("CoolSwitchColumns: %d\n", CoolSwitchColumns);

   return TRUE;
}
