
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {scalar_t__ st_size; int st_mode; } ;
struct TYPE_6__ {int written_compressed; unsigned int last_percent; int progress_ratelimit; TYPE_1__ st; } ;
typedef TYPE_2__ TarImport ;


 int S_ISREG (int ) ;
 int UINT64_C (int) ;
 int assert (TYPE_2__*) ;
 int log_info (char*,unsigned int) ;
 int ratelimit_below (int *) ;
 int sd_notifyf (int,char*,unsigned int) ;

__attribute__((used)) static void tar_import_report_progress(TarImport *i) {
        unsigned percent;
        assert(i);


        if (!S_ISREG(i->st.st_mode))
                return;

        if (i->written_compressed >= (uint64_t) i->st.st_size)
                percent = 100;
        else
                percent = (unsigned) ((i->written_compressed * UINT64_C(100)) / (uint64_t) i->st.st_size);

        if (percent == i->last_percent)
                return;

        if (!ratelimit_below(&i->progress_ratelimit))
                return;

        sd_notifyf(0, "X_IMPORT_PROGRESS=%u", percent);
        log_info("Imported %u%%.", percent);

        i->last_percent = percent;
}
