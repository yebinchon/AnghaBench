
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 scalar_t__ GetFileAttributesA (char const*) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;

__attribute__((used)) static BOOL file_exists(const char *file)
{
    return GetFileAttributesA(file) != INVALID_FILE_ATTRIBUTES;
}
