
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int checksum; int payload; int old_etags; int etag; int url; scalar_t__ checksum_context; int compress; int disk_fd; int request_header; int curl; int glue; } ;
typedef TYPE_1__ PullJob ;


 int curl_glue_remove_and_free (int ,int ) ;
 int curl_slist_free_all (int ) ;
 int free (int ) ;
 int gcry_md_close (scalar_t__) ;
 int import_compress_free (int *) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int safe_close (int ) ;
 int strv_free (int ) ;

PullJob* pull_job_unref(PullJob *j) {
        if (!j)
                return ((void*)0);

        curl_glue_remove_and_free(j->glue, j->curl);
        curl_slist_free_all(j->request_header);

        safe_close(j->disk_fd);

        import_compress_free(&j->compress);

        if (j->checksum_context)
                gcry_md_close(j->checksum_context);

        free(j->url);
        free(j->etag);
        strv_free(j->old_etags);
        free(j->payload);
        free(j->checksum);

        return mfree(j);
}
