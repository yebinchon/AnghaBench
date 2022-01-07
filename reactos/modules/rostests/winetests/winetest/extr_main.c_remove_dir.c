
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* cFileName; char* cAlternateFileName; int dwFileAttributes; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef scalar_t__ HANDLE ;


 int DeleteFile (char*) ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFile (char*,TYPE_1__*) ;
 scalar_t__ FindNextFile (scalar_t__,TYPE_1__*) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int R_WARNING ;
 int RemoveDirectory (char const*) ;
 scalar_t__ is_dot_dir (char*) ;
 int memcpy (char*,char const*,size_t) ;
 int report (int ,char*,char const*,int ) ;
 int strcpy (char*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void remove_dir (const char *dir)
{
    HANDLE hFind;
    WIN32_FIND_DATA wfd;
    char path[MAX_PATH];
    size_t dirlen = strlen (dir);


    memcpy (path, dir, dirlen);
    strcpy (path + dirlen++, "\\*");
    hFind = FindFirstFile (path, &wfd);
    if (hFind == INVALID_HANDLE_VALUE) return;

    do {
        char *lp = wfd.cFileName;

        if (!lp[0]) lp = wfd.cAlternateFileName;
        if (is_dot_dir (lp)) continue;
        strcpy (path + dirlen, lp);
        if (FILE_ATTRIBUTE_DIRECTORY & wfd.dwFileAttributes)
            remove_dir(path);
        else if (!DeleteFile (path))
            report (R_WARNING, "Can't delete file %s: error %d",
                    path, GetLastError ());
    } while (FindNextFile (hFind, &wfd));
    FindClose (hFind);
    if (!RemoveDirectory (dir))
        report (R_WARNING, "Can't remove directory %s: error %d",
                dir, GetLastError ());
}
