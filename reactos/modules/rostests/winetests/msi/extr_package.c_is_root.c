
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 scalar_t__ isalpha (char const) ;

__attribute__((used)) static BOOL is_root(const char *path)
{
    return (isalpha(path[0]) && path[1] == ':' && path[2] == '\\' && !path[3]);
}
