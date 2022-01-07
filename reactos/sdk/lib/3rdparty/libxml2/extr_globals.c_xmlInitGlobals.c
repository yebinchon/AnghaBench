
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * xmlNewMutex () ;
 int * xmlThrDefMutex ;

void xmlInitGlobals(void)
{
    if (xmlThrDefMutex == ((void*)0))
        xmlThrDefMutex = xmlNewMutex();
}
