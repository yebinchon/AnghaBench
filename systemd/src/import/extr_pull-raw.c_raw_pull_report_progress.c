
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {TYPE_5__* raw_job; TYPE_4__* signature_job; TYPE_3__* checksum_job; TYPE_2__* roothash_job; TYPE_1__* settings_job; } ;
struct TYPE_13__ {unsigned int progress_percent; } ;
struct TYPE_12__ {int progress_percent; } ;
struct TYPE_11__ {int progress_percent; } ;
struct TYPE_10__ {int progress_percent; } ;
struct TYPE_9__ {int progress_percent; } ;
typedef TYPE_6__ RawPull ;
typedef int RawProgress ;







 int assert (TYPE_6__*) ;
 int assert_not_reached (char*) ;
 int log_debug (char*,unsigned int) ;
 int sd_notifyf (int,char*,unsigned int) ;

__attribute__((used)) static void raw_pull_report_progress(RawPull *i, RawProgress p) {
        unsigned percent;

        assert(i);

        switch (p) {

        case 131: {
                unsigned remain = 80;

                percent = 0;

                if (i->settings_job) {
                        percent += i->settings_job->progress_percent * 5 / 100;
                        remain -= 5;
                }

                if (i->roothash_job) {
                        percent += i->roothash_job->progress_percent * 5 / 100;
                        remain -= 5;
                }

                if (i->checksum_job) {
                        percent += i->checksum_job->progress_percent * 5 / 100;
                        remain -= 5;
                }

                if (i->signature_job) {
                        percent += i->signature_job->progress_percent * 5 / 100;
                        remain -= 5;
                }

                if (i->raw_job)
                        percent += i->raw_job->progress_percent * remain / 100;
                break;
        }

        case 128:
                percent = 80;
                break;

        case 129:
                percent = 85;
                break;

        case 130:
                percent = 90;
                break;

        case 132:
                percent = 95;
                break;

        default:
                assert_not_reached("Unknown progress state");
        }

        sd_notifyf(0, "X_IMPORT_PROGRESS=%u", percent);
        log_debug("Combined progress %u%%", percent);
}
