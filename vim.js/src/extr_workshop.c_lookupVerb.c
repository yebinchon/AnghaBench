
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int verb; } ;


 TYPE_1__* menuMap ;
 int menuMapSize ;
 char* nameStrip (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static char *
lookupVerb(
 char *verb,
 int skip)
{
    int i;

    for (i = 0; i < menuMapSize; i++)
 if (strcmp(menuMap[i].verb, verb) == 0 && skip-- == 0)
     return nameStrip(menuMap[i].name);

    return ((void*)0);
}
