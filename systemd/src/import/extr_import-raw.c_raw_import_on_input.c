
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sd_event_source ;
typedef int RawImport ;


 int raw_import_process (int *) ;

__attribute__((used)) static int raw_import_on_input(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        RawImport *i = userdata;

        return raw_import_process(i);
}
