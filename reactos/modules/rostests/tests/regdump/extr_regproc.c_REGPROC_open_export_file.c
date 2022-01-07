
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int FILE ;


 int _T (char*) ;
 int _fputts (int ,int *) ;
 int * _tfopen (int *,int ) ;
 int _tprintf (int ,int *) ;
 int perror (char*) ;

FILE *REGPROC_open_export_file(TCHAR *file_name)
{





    FILE *file = _tfopen(file_name, _T("w"));
    if (!file) {
        perror("");
        _tprintf(_T("REGPROC_open_export_file(%s) - Can't open file.\n"), file_name);

        return ((void*)0);
    }
    _fputts(_T("REGEDIT4\n"), file);
    return file;
}
