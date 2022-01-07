
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_LIST_DIRECTORY ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static int dir_exists(const char *path)
{
        struct stat statbuf;
        if (stat(path, &statbuf) != -1)
                return 1;
        else
                return 0;

}
