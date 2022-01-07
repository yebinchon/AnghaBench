
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Writer ;
typedef int RemoteSource ;


 int assert (void**) ;
 int journal_remote_get_writer (int ,char*,int **) ;
 int journal_remote_server_global ;
 int log_debug (char*,int *) ;
 int log_oom () ;
 int log_warning_errno (int,char*,char*) ;
 int * source_new (int,int,char*,int *) ;
 int writer_unref (int *) ;

__attribute__((used)) static int request_meta(void **connection_cls, int fd, char *hostname) {
        RemoteSource *source;
        Writer *writer;
        int r;

        assert(connection_cls);
        if (*connection_cls)
                return 0;

        r = journal_remote_get_writer(journal_remote_server_global, hostname, &writer);
        if (r < 0)
                return log_warning_errno(r, "Failed to get writer for source %s: %m",
                                         hostname);

        source = source_new(fd, 1, hostname, writer);
        if (!source) {
                writer_unref(writer);
                return log_oom();
        }

        log_debug("Added RemoteSource as connection metadata %p", source);

        *connection_cls = source;
        return 0;
}
