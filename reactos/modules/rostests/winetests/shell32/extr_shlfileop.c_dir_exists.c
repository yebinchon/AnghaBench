
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int CHAR ;
typedef int BOOL ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributesA (int const*) ;
 int INVALID_FILE_ATTRIBUTES ;

__attribute__((used)) static BOOL dir_exists(const CHAR *name)
{
    DWORD attr;
    BOOL dir;

    attr = GetFileAttributesA(name);
    dir = ((attr & FILE_ATTRIBUTE_DIRECTORY) == FILE_ATTRIBUTE_DIRECTORY);

    return ((attr != INVALID_FILE_ATTRIBUTES) && dir);
}
