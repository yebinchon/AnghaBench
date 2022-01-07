
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {scalar_t__ st_size; } ;
struct TYPE_6__ {int written_uncompressed; unsigned int last_percent; int progress_ratelimit; TYPE_1__ st; } ;
typedef TYPE_2__ RawExport ;


 int UINT64_C (int) ;
 int assert (TYPE_2__*) ;
 int log_info (char*,unsigned int) ;
 int ratelimit_below (int *) ;
 int sd_notifyf (int,char*,unsigned int) ;

__attribute__((used)) static void raw_export_report_progress(RawExport *e) {
        unsigned percent;
        assert(e);

        if (e->written_uncompressed >= (uint64_t) e->st.st_size)
                percent = 100;
        else
                percent = (unsigned) ((e->written_uncompressed * UINT64_C(100)) / (uint64_t) e->st.st_size);

        if (percent == e->last_percent)
                return;

        if (!ratelimit_below(&e->progress_ratelimit))
                return;

        sd_notifyf(0, "X_IMPORT_PROGRESS=%u", percent);
        log_info("Exported %u%%.", percent);

        e->last_percent = percent;
}
