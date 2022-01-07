
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event_source ;
typedef int TarImport ;


 int tar_import_process (int *) ;

__attribute__((used)) static int tar_import_on_defer(sd_event_source *s, void *userdata) {
        TarImport *i = userdata;

        return tar_import_process(i);
}
