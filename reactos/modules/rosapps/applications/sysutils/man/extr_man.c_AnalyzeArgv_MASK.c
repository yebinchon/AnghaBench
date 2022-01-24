#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int MAXLINE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char**) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

int
FUNC8(char *argument)
{
    int element;
    char HelpFlag=0;
    char *keys[]={"--help","/h","/?","-h"};
    char *sections[]={".1",".2",".3",".4",".5",".6",".7",".8",".9"};
    char *filename=(char*)FUNC3(sizeof(char)*MAXLINE);

    FUNC7(filename,argument); //save argument value

    for(element=0;element<FUNC2(keys);element++)
    {
     if(!FUNC6(keys[element],argument))
     {
      FUNC1();
      HelpFlag=1;
     }
    }

   element = 0;

   if(!HelpFlag)
   {

   if(FUNC0(filename))
   {
    while(element<FUNC2(sections)&&FUNC0(FUNC5(filename,sections[element])))
    {
     FUNC7(filename,argument);
     element++;
    }

    if(element>=FUNC2(sections)) FUNC4("No manual for %s\n",argument);
   }

   }

    return element;
}