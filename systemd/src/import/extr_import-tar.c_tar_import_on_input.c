
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sd_event_source ;
typedef int TarImport ;


 int tar_import_process (int *) ;

__attribute__((used)) static int tar_import_on_input(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        TarImport *i = userdata;

        return tar_import_process(i);
}
