
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsBool ;


 char DIR_CHAR ;
 int FALSE ;
 int TRUE ;
 scalar_t__ isalpha (int) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static
cmsBool isabsolutepath(const char *path)
{
    char ThreeChars[4];

    if(path == ((void*)0))
        return FALSE;
    if (path[0] == 0)
        return FALSE;

    strncpy(ThreeChars, path, 3);
    ThreeChars[3] = 0;

    if(ThreeChars[0] == DIR_CHAR)
        return TRUE;





    return FALSE;
}
