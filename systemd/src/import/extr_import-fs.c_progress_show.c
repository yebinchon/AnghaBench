
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_4__ {int started; int logged_incomplete; scalar_t__ size; int path; int limit; } ;
typedef TYPE_1__ ProgressInfo ;


 int FORMAT_BYTES_MAX ;
 int assert (TYPE_1__*) ;
 int format_bytes (char*,int,scalar_t__) ;
 int log_info (char*,int ,...) ;
 int log_notice (char*) ;
 int ratelimit_below (int *) ;

__attribute__((used)) static void progress_show(ProgressInfo *p) {
        assert(p);


        if (!ratelimit_below(&p->limit))
                return;


        if (!p->started) {
                p->started = 1;
                return;
        }


        if (!p->logged_incomplete) {
                log_notice("(Note, file list shown below is incomplete, and is intended as sporadic progress report only.)");
                p->logged_incomplete = 1;
        }

        if (p->size == 0)
                log_info("Copying tree, currently at '%s'...", p->path);
        else {
                char buffer[FORMAT_BYTES_MAX];

                log_info("Copying tree, currently at '%s' (@%s)...", p->path, format_bytes(buffer, sizeof(buffer), p->size));
        }
}
