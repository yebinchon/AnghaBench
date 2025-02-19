
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;


 int _T (char*) ;
 int _tprintf (int ,int *) ;
 scalar_t__ create_output_file (int *,int *,int *) ;
 scalar_t__ status_flagged ;
 scalar_t__ verify_output_file (int *,int *,int *) ;

__attribute__((used)) static int create_test_file(TCHAR* file_name, TCHAR* write_mode, TCHAR* read_mode, TCHAR* file_data)
{
    if (status_flagged) {
        _tprintf(_T("STATUS: Attempting to create output file %s\n"), file_name);
    }
    if (create_output_file(file_name, write_mode, file_data)) {
        if (status_flagged) {
            _tprintf(_T("STATUS: Attempting to verify output file %s\n"), file_name);
        }
        if (verify_output_file(file_name, read_mode, file_data)) {
            if (status_flagged) {
                _tprintf(_T("SUCCESS: %s verified ok\n"), file_name);
            }
        } else {

            return 2;
        }
    } else {
        _tprintf(_T("ERROR: failed to create file %s\n"), file_name);
        return 1;
    }
    return 0;
}
