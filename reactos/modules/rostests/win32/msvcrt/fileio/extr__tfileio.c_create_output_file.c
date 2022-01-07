
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int FILE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int _T (char*) ;
 scalar_t__ _TEOF ;
 scalar_t__ _fputts (int *,int *) ;
 int * _tfopen (int *,int *) ;
 int _tprintf (int ,int *) ;
 int fclose (int *) ;
 int * ferror (int *) ;

__attribute__((used)) static BOOL create_output_file(TCHAR* file_name, TCHAR* file_mode, TCHAR* file_data)
{
    BOOL result = FALSE;
    FILE *file = _tfopen(file_name, file_mode);
    if (file != ((void*)0)) {
        if (_fputts(file_data, file) != _TEOF) {
            result = TRUE;
        } else {
            _tprintf(_T("ERROR: failed to write data to file \"%s\"\n"), file_name);
            _tprintf(_T("ERROR: ferror returned %d\n"), ferror(file));
        }
        fclose(file);
    } else {
        _tprintf(_T("ERROR: failed to open/create file \"%s\" for output\n"), file_name);
        _tprintf(_T("ERROR: ferror returned %d\n"), ferror(file));
    }
    return result;
}
