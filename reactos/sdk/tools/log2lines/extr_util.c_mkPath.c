
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 int MKDIR (char*) ;
 char PATH_CHAR ;
 scalar_t__ errno ;
 char* strrchr (char*,char) ;

int
mkPath(char *path, int isDir)
{
    char *s;
    int res = 0;

    if (isDir)
    {
        res = MKDIR(path);
        if (!res || (res == -1 && errno == EEXIST))
            return 0;
    }

    if ((s = strrchr(path, PATH_CHAR)))
    {
        *s = '\0';
        res = mkPath(path, 1);
        *s = PATH_CHAR;
    }

    if (!res && isDir)
        res = MKDIR(path);

    return res;
}
