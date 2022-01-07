
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int FILE ;


 int _T (char*) ;
 int _TEOF ;
 int _THEX_FORMAT ;
 int _fgettc (int *) ;
 int * _tfopen (int *,int *) ;
 int _tprintf (int ,int *,...) ;
 int fclose (int *) ;
 int ferror (int *) ;
 int perror (char*) ;
 scalar_t__ status_flagged ;
 scalar_t__ verbose_flagged ;

__attribute__((used)) static int check_file_size(TCHAR* file_name, TCHAR* file_mode, int expected)
{
    int count = 0;
    FILE* file;
    TCHAR ch;
    int error_code;

    if (status_flagged) {

        _tprintf(_T("STATUS: (%s) checking for %d bytes with mode %s\n"), file_name, expected, file_mode);
    }
    file = _tfopen(file_name, file_mode);
    if (file == ((void*)0)) {
        _tprintf(_T("ERROR: (%s) failed to open file for reading\n"), file_name);
        return 1;
    }
    while ((ch = _fgettc(file)) != _TEOF) {
        if (verbose_flagged) {
            _tprintf(_THEX_FORMAT, ch);
        }
        ++count;
    }
    error_code = ferror(file);
    if (error_code) {
         _tprintf(_T("ERROR: (%s) ferror returned %d after reading\n"), file_name, error_code);
         perror("Read error");
    }

    if (verbose_flagged) {

    }
    fclose(file);
    if (count == expected) {
        if (status_flagged) {
            _tprintf(_T("PASSED: (%s) read %d bytes\n"), file_name, count);
        }
    } else {
        _tprintf(_T("FAILED: (%s) read %d bytes but expected %d using mode \"%s\"\n"), file_name, count, expected, file_mode);
    }
    return (count == expected) ? 0 : -1;
}
