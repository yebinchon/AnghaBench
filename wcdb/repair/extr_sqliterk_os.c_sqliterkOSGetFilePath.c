
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* path; } ;
typedef TYPE_1__ sqliterk_file ;



const char *sqliterkOSGetFilePath(sqliterk_file *file)
{
    return file->path;
}
