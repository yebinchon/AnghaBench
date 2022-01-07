
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXLINE ;
 scalar_t__ OpenF (char*) ;
 int Usage () ;
 int _countof (char**) ;
 scalar_t__ malloc (int) ;
 int printf (char*,char*) ;
 char* strcat (char*,char*) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

int
AnalyzeArgv(char *argument)
{
    int element;
    char HelpFlag=0;
    char *keys[]={"--help","/h","/?","-h"};
    char *sections[]={".1",".2",".3",".4",".5",".6",".7",".8",".9"};
    char *filename=(char*)malloc(sizeof(char)*MAXLINE);

    strcpy(filename,argument);

    for(element=0;element<_countof(keys);element++)
    {
     if(!strcmp(keys[element],argument))
     {
      Usage();
      HelpFlag=1;
     }
    }

   element = 0;

   if(!HelpFlag)
   {

   if(OpenF(filename))
   {
    while(element<_countof(sections)&&OpenF(strcat(filename,sections[element])))
    {
     strcpy(filename,argument);
     element++;
    }

    if(element>=_countof(sections)) printf("No manual for %s\n",argument);
   }

   }

    return element;
}
