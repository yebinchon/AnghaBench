
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int FILE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int _T (char*) ;
 int * _tfopen (int ,int ) ;
 int doSetValue ;
 int processRegLines (int *,int ) ;

BOOL import_registry_file(LPTSTR filename)
{
    FILE* reg_file = _tfopen(filename, _T("r"));

    if (reg_file) {
        processRegLines(reg_file, doSetValue);
        return TRUE;
    }
    return FALSE;
}
