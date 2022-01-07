
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; int filenames; } ;
typedef TYPE_1__ data_filenames_t ;


 int UTIL_freeFileList (int ,int ) ;

void data_filenames_free(data_filenames_t filenames) {
    UTIL_freeFileList(filenames.filenames, filenames.buffer);
}
