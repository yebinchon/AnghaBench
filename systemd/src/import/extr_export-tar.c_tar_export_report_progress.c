
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int quota_referenced; int written_uncompressed; unsigned int last_percent; int progress_ratelimit; } ;
typedef TYPE_1__ TarExport ;


 int UINT64_C (int) ;
 int assert (TYPE_1__*) ;
 int log_info (char*,unsigned int) ;
 int ratelimit_below (int *) ;
 int sd_notifyf (int,char*,unsigned int) ;

__attribute__((used)) static void tar_export_report_progress(TarExport *e) {
        unsigned percent;
        assert(e);


        if (e->quota_referenced == (uint64_t) -1)
                return;

        if (e->written_uncompressed >= e->quota_referenced)
                percent = 100;
        else
                percent = (unsigned) ((e->written_uncompressed * UINT64_C(100)) / e->quota_referenced);

        if (percent == e->last_percent)
                return;

        if (!ratelimit_below(&e->progress_ratelimit))
                return;

        sd_notifyf(0, "X_IMPORT_PROGRESS=%u", percent);
        log_info("Exported %u%%.", percent);

        e->last_percent = percent;
}
