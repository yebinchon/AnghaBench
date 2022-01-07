
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event ;
typedef int TarExport ;


 int abs (int) ;
 int assert (int *) ;
 int log_info (char*) ;
 int sd_event_exit (int *,int ) ;

__attribute__((used)) static void on_tar_finished(TarExport *export, int error, void *userdata) {
        sd_event *event = userdata;
        assert(export);

        if (error == 0)
                log_info("Operation completed successfully.");

        sd_event_exit(event, abs(error));
}
