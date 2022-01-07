
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;


 int TEXT (char*) ;
 int _tprintf (int ,int ) ;

void RefreshDirectory(LPTSTR lpDir)
{




   _tprintf(TEXT("Directory (%s) changed.\n"), lpDir);
}
