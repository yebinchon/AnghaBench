
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CP_ACP ;
 int INDEX_HTML ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,int ,int) ;
 int lstrcatA (char*,char*) ;
 int lstrcpyA (char*,char*) ;

__attribute__((used)) static void set_file_url(char *path)
{
    char INDEX_HTML_A[MAX_PATH];

    lstrcpyA(INDEX_HTML_A, "file:///");
    lstrcatA(INDEX_HTML_A, path);
    MultiByteToWideChar(CP_ACP, 0, INDEX_HTML_A, -1, INDEX_HTML, MAX_PATH);
}
