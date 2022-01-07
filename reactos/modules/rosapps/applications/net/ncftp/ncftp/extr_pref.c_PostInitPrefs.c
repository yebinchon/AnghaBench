
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dataPortMode; } ;
struct TYPE_4__ {char* defaultAnonPassword; } ;


 int FTPInitializeAnonPassword (TYPE_1__*) ;
 TYPE_2__ gConn ;
 scalar_t__ gFwDataPortMode ;
 TYPE_1__ gLib ;
 int gPrefsDirty ;

void
PostInitPrefs(void)
{
 if (gLib.defaultAnonPassword[0] == '\0') {
  FTPInitializeAnonPassword(&gLib);
  gPrefsDirty++;
 }
 if (gFwDataPortMode >= 0)
  gConn.dataPortMode = gFwDataPortMode;
}
