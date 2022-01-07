
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int CHAR ;


 int OemToCharBuffW (int *,int *,int) ;
 int _MAX_PATH ;
 int _T (char) ;
 int get_file_nameA (int **,int *,int) ;
 int strlen (int *) ;

void get_file_nameW(CHAR** command_line, WCHAR* filename, int max_filename)
{
    CHAR filenameA[_MAX_PATH];
    int len;

    get_file_nameA(command_line, filenameA, _MAX_PATH);
    len = strlen(filenameA);
    OemToCharBuffW(filenameA, filename, max_filename);
    filename[len] = _T('\0');
}
