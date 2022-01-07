
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 int MAX_OPTIONS ;
 int * Options ;
 int TRUE ;
 int _tcscmp (int ,int *) ;

BOOLEAN
IsOptionSet(TCHAR *Option)
{
  int i;
  for(i = 0; i < MAX_OPTIONS; i++)
  {
    if(!Options[i])
      continue;

    if(!_tcscmp(Options[i], Option))
      return TRUE;
  }
  return FALSE;
}
