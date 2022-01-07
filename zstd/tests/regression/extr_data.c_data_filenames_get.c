
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* path; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
typedef TYPE_2__ data_t ;
struct TYPE_8__ {int size; int * buffer; int filenames; } ;
typedef TYPE_3__ data_filenames_t ;


 int UTIL_createFileList (char const**,int,int **,int *,int ) ;

data_filenames_t data_filenames_get(data_t const* data) {
    data_filenames_t filenames = {.buffer = ((void*)0), .size = 0};
    char const* path = data->data.path;

    filenames.filenames = UTIL_createFileList(
        &path,
        1,
        &filenames.buffer,
        &filenames.size,
                          0);
    return filenames;
}
