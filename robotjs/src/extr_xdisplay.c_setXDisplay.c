
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int displayName ;
 int hasDisplayNameChanged ;
 int strdup (char*) ;

void setXDisplay(char *name)
{
 displayName = strdup(name);
 hasDisplayNameChanged = 1;
}
