
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current_cursor; int last_cursor; int answer; int url; int easy; scalar_t__* error; int watchdog_timestamp; } ;
typedef TYPE_1__ Uploader ;
typedef scalar_t__ CURLcode ;


 int CLOCK_MONOTONIC ;
 int CURLINFO_RESPONSE_CODE ;
 int EIO ;
 int EUCLEAN ;
 int SYNTHETIC_ERRNO (int) ;
 int assert (TYPE_1__*) ;
 scalar_t__ curl_easy_getinfo (int ,int ,long*) ;
 scalar_t__ curl_easy_perform (int ) ;
 int curl_easy_strerror (scalar_t__) ;
 int free_and_replace (int ,int ) ;
 int log_debug (char*,long,int ) ;
 int log_error (char*,int ,int,...) ;
 int log_error_errno (int ,char*,int ,...) ;
 int now (int ) ;
 int strna (int ) ;
 int update_cursor_state (TYPE_1__*) ;

__attribute__((used)) static int perform_upload(Uploader *u) {
        CURLcode code;
        long status;

        assert(u);

        u->watchdog_timestamp = now(CLOCK_MONOTONIC);
        code = curl_easy_perform(u->easy);
        if (code) {
                if (u->error[0])
                        log_error("Upload to %s failed: %.*s",
                                  u->url, (int) sizeof(u->error), u->error);
                else
                        log_error("Upload to %s failed: %s",
                                  u->url, curl_easy_strerror(code));
                return -EIO;
        }

        code = curl_easy_getinfo(u->easy, CURLINFO_RESPONSE_CODE, &status);
        if (code)
                return log_error_errno(SYNTHETIC_ERRNO(EUCLEAN),
                                       "Failed to retrieve response code: %s",
                                       curl_easy_strerror(code));

        if (status >= 300)
                return log_error_errno(SYNTHETIC_ERRNO(EIO),
                                       "Upload to %s failed with code %ld: %s",
                                       u->url, status, strna(u->answer));
        else if (status < 200)
                return log_error_errno(SYNTHETIC_ERRNO(EIO),
                                       "Upload to %s finished with unexpected code %ld: %s",
                                       u->url, status, strna(u->answer));
        else
                log_debug("Upload finished successfully with code %ld: %s",
                          status, strna(u->answer));

        free_and_replace(u->last_cursor, u->current_cursor);

        return update_cursor_state(u);
}
