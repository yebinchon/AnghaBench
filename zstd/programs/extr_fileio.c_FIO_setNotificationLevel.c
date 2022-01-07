
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int displayLevel; } ;


 TYPE_1__ g_display_prefs ;

void FIO_setNotificationLevel(int level) { g_display_prefs.displayLevel=level; }
