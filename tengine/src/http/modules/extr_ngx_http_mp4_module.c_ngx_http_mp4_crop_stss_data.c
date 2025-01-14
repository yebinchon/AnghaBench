
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_10__ {scalar_t__ start_sample; scalar_t__ end_sample; scalar_t__ sync_samples_entries; TYPE_1__* out; } ;
typedef TYPE_3__ ngx_http_mp4_trak_t ;
struct TYPE_9__ {int log; } ;
struct TYPE_11__ {TYPE_2__ file; scalar_t__ length; } ;
typedef TYPE_4__ ngx_http_mp4_file_t ;
struct TYPE_12__ {int * last; int * pos; } ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_8__ {TYPE_5__* buf; } ;


 size_t NGX_HTTP_MP4_STSS_DATA ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 scalar_t__ ngx_mp4_get_32value (scalar_t__*) ;

__attribute__((used)) static void
ngx_http_mp4_crop_stss_data(ngx_http_mp4_file_t *mp4,
    ngx_http_mp4_trak_t *trak, ngx_uint_t start)
{
    uint32_t sample, start_sample, *entry, *end;
    ngx_buf_t *data;
    ngx_uint_t entries;



    if (start) {
        start_sample = trak->start_sample + 1;

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "mp4 stss crop start_sample:%uD", start_sample);

    } else if (mp4->length) {
        start_sample = trak->end_sample + 1;

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "mp4 stss crop end_sample:%uD", start_sample);

    } else {
        return;
    }

    data = trak->out[NGX_HTTP_MP4_STSS_DATA].buf;

    entries = trak->sync_samples_entries;
    entry = (uint32_t *) data->pos;
    end = (uint32_t *) data->last;

    while (entry < end) {
        sample = ngx_mp4_get_32value(entry);

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "sync:%uD", sample);

        if (sample >= start_sample) {
            goto found;
        }

        entries--;
        entry++;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                   "sample is out of mp4 stss atom");

found:

    if (start) {
        data->pos = (u_char *) entry;
        trak->sync_samples_entries = entries;

    } else {
        data->last = (u_char *) entry;
        trak->sync_samples_entries -= entries;
    }
}
