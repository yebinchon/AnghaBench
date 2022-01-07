
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char CHAR ;


 int _T (char*) ;
 int _tprintf (int ) ;
 int assert (int ) ;
 scalar_t__ isspace (char) ;
 int memcpy (char*,char*,int) ;

void get_file_nameA(CHAR **command_line, CHAR *file_name, int max_filename)
{
    CHAR *s = *command_line;
    int pos = 0;
    file_name[0] = 0;

    if (!s[0]) {
        return;
    }
    if (s[0] == '"') {
        s++;
        (*command_line)++;
        while (s[0] != '"') {
            if (!s[0]) {
                _tprintf(_T("Unexpected end of file name!\n"));
                assert(0);

            }
            s++;
            pos++;
        }
    } else {
        while (s[0] && !isspace(s[0])) {
            s++;
            pos++;
        }
    }
    memcpy(file_name, *command_line, pos * sizeof((*command_line)[0]));

    if (file_name[pos - 1] == '\\') {
        file_name[pos - 1] = '\0';
    } else {
        file_name[pos] = '\0';
    }
    if (s[0]) {
        s++;
        pos++;
    }
    while (s[0] && isspace(s[0])) {
        s++;
        pos++;
    }
    (*command_line) += pos;
}
