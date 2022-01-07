
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsBool ;


 int DIR_CHAR ;
 int FALSE ;
 int TRUE ;
 scalar_t__ isabsolutepath (char const*) ;
 int strncpy (char*,char const*,int) ;
 char* strrchr (char*,int ) ;

__attribute__((used)) static
cmsBool BuildAbsolutePath(const char *relPath, const char *basePath, char *buffer, cmsUInt32Number MaxLen)
{
    char *tail;
    cmsUInt32Number len;


    if (isabsolutepath(relPath)) {

        strncpy(buffer, relPath, MaxLen);
        buffer[MaxLen-1] = 0;
        return TRUE;
    }


    strncpy(buffer, basePath, MaxLen);
    buffer[MaxLen-1] = 0;

    tail = strrchr(buffer, DIR_CHAR);
    if (tail == ((void*)0)) return FALSE;

    len = (cmsUInt32Number) (tail - buffer);
    if (len >= MaxLen) return FALSE;


    strncpy(tail + 1, relPath, MaxLen - len);

    return TRUE;
}
