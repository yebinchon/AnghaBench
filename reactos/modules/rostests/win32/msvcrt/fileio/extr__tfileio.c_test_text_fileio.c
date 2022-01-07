
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;


 int _T (char*) ;
 int check_file_size (int *,int ,int) ;
 int create_test_file (int *,int ,int ,int *) ;

__attribute__((used)) static int test_text_fileio(TCHAR* file_name, TCHAR* file_data, int tsize, int bsize)
{
    int result = 0;

    result = create_test_file(file_name, _T("w"), _T("r"), file_data);
    result = check_file_size(file_name, _T("r"), tsize);
    result = check_file_size(file_name, _T("rb"), bsize);
    return result;
}
