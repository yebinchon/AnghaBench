
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tox ;


 char* data_file_name ;
 scalar_t__ save_data (int *) ;

__attribute__((used)) static int save_data_file(Tox *m, char *path)
{
    data_file_name = path;

    if (save_data(m))
        return 1;

    return 0;
}
