
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Writer ;
struct TYPE_4__ {int ** sources; int active; int sources_size; } ;
typedef int RemoteSource ;
typedef TYPE_1__ RemoteServer ;


 int GREEDY_REALLOC0 (int **,int ,int) ;
 int assert (int) ;
 int journal_remote_get_writer (TYPE_1__*,char*,int **) ;
 int log_oom () ;
 int log_warning_errno (int,char*,char*) ;
 int * source_new (int,int,char*,int *) ;
 int writer_unref (int *) ;

__attribute__((used)) static int get_source_for_fd(RemoteServer *s,
                             int fd, char *name, RemoteSource **source) {
        Writer *writer;
        int r;



        assert(fd >= 0);
        assert(source);

        if (!GREEDY_REALLOC0(s->sources, s->sources_size, fd + 1))
                return log_oom();

        r = journal_remote_get_writer(s, name, &writer);
        if (r < 0)
                return log_warning_errno(r, "Failed to get writer for source %s: %m",
                                         name);

        if (!s->sources[fd]) {
                s->sources[fd] = source_new(fd, 0, name, writer);
                if (!s->sources[fd]) {
                        writer_unref(writer);
                        return log_oom();
                }

                s->active++;
        }

        *source = s->sources[fd];
        return 0;
}
