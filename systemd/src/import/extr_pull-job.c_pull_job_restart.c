
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* url; scalar_t__ written_uncompressed; scalar_t__ written_compressed; scalar_t__ payload_allocated; scalar_t__ payload_size; int payload; int state; } ;
typedef TYPE_1__ PullJob ;


 int PULL_JOB_INIT ;
 int free (char*) ;
 int import_url_change_last_component (char*,char*,char**) ;
 int mfree (int ) ;
 int pull_job_begin (TYPE_1__*) ;

__attribute__((used)) static int pull_job_restart(PullJob *j) {
        int r;
        char *chksum_url = ((void*)0);

        r = import_url_change_last_component(j->url, "SHA256SUMS", &chksum_url);
        if (r < 0)
                return r;

        free(j->url);
        j->url = chksum_url;
        j->state = PULL_JOB_INIT;
        j->payload = mfree(j->payload);
        j->payload_size = 0;
        j->payload_allocated = 0;
        j->written_compressed = 0;
        j->written_uncompressed = 0;

        r = pull_job_begin(j);
        if (r < 0)
                return r;

        return 0;
}
