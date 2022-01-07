
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CHAR ;


 int CP_ACP ;
 int INTERNET_MAX_URL_LENGTH ;
 int MultiByteToWideChar (int ,int ,int *,int,int ,int) ;
 int file_url ;
 int lstrcatA (int *,char*) ;
 int lstrcpyA (int *,char*) ;

__attribute__((used)) static void set_file_url(char *path)
{
    CHAR file_urlA[INTERNET_MAX_URL_LENGTH];

    lstrcpyA(file_urlA, "file://");
    lstrcatA(file_urlA, path);
    MultiByteToWideChar(CP_ACP, 0, file_urlA, -1, file_url, INTERNET_MAX_URL_LENGTH);
}
