
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_17__ {int entries; int size; } ;
typedef TYPE_6__ ngx_mp4_co64_atom_t ;
typedef int ngx_int_t ;
struct TYPE_18__ {scalar_t__ start_chunk; scalar_t__ chunks; scalar_t__ end_chunk; size_t size; TYPE_5__* out; void* end_offset; void* start_offset; scalar_t__ end_chunk_samples_size; scalar_t__ start_chunk_samples_size; } ;
typedef TYPE_7__ ngx_http_mp4_trak_t ;
struct TYPE_15__ {TYPE_3__* buf; } ;
struct TYPE_12__ {int data; } ;
struct TYPE_13__ {int log; TYPE_1__ name; } ;
struct TYPE_19__ {void* end; TYPE_4__ mdat_data; TYPE_2__ file; scalar_t__ length; } ;
typedef TYPE_8__ ngx_http_mp4_file_t ;
struct TYPE_20__ {int pos; int last; } ;
typedef TYPE_9__ ngx_buf_t ;
struct TYPE_16__ {TYPE_9__* buf; } ;
struct TYPE_14__ {void* file_last; } ;


 int NGX_ERROR ;
 size_t NGX_HTTP_MP4_CO64_ATOM ;
 size_t NGX_HTTP_MP4_CO64_DATA ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,void*) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 void* ngx_mp4_get_64value (int) ;
 int ngx_mp4_set_32value (int ,int) ;
 int ngx_mp4_set_64value (int,void*) ;

__attribute__((used)) static ngx_int_t
ngx_http_mp4_update_co64_atom(ngx_http_mp4_file_t *mp4,
    ngx_http_mp4_trak_t *trak)
{
    size_t atom_size;
    uint64_t entries;
    ngx_buf_t *atom, *data;
    ngx_mp4_co64_atom_t *co64_atom;







    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                   "mp4 co64 atom update");

    data = trak->out[NGX_HTTP_MP4_CO64_DATA].buf;

    if (data == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, mp4->file.log, 0,
                      "no mp4 co64 atoms were found in \"%s\"",
                      mp4->file.name.data);
        return NGX_ERROR;
    }

    if (trak->start_chunk > trak->chunks) {
        ngx_log_error(NGX_LOG_ERR, mp4->file.log, 0,
                      "start time is out mp4 co64 chunks in \"%s\"",
                      mp4->file.name.data);
        return NGX_ERROR;
    }

    data->pos += trak->start_chunk * sizeof(uint64_t);

    trak->start_offset = ngx_mp4_get_64value(data->pos);
    trak->start_offset += trak->start_chunk_samples_size;
    ngx_mp4_set_64value(data->pos, trak->start_offset);

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                   "start chunk offset:%O", trak->start_offset);

    if (mp4->length) {

        if (trak->end_chunk > trak->chunks) {
            ngx_log_error(NGX_LOG_ERR, mp4->file.log, 0,
                          "end time is out mp4 co64 chunks in \"%s\"",
                          mp4->file.name.data);
            return NGX_ERROR;
        }

        entries = trak->end_chunk - trak->start_chunk;
        data->last = data->pos + entries * sizeof(uint64_t);

        if (entries) {
            trak->end_offset =
                            ngx_mp4_get_64value(data->last - sizeof(uint64_t));
            trak->end_offset += trak->end_chunk_samples_size;

            ngx_log_debug1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                           "end chunk offset:%O", trak->end_offset);
        }

    } else {
        entries = trak->chunks - trak->start_chunk;
        trak->end_offset = mp4->mdat_data.buf->file_last;
    }

    if (entries == 0) {
        trak->start_offset = mp4->end;
        trak->end_offset = 0;
    }

    atom_size = sizeof(ngx_mp4_co64_atom_t) + (data->last - data->pos);
    trak->size += atom_size;

    atom = trak->out[NGX_HTTP_MP4_CO64_ATOM].buf;
    co64_atom = (ngx_mp4_co64_atom_t *) atom->pos;

    ngx_mp4_set_32value(co64_atom->size, atom_size);
    ngx_mp4_set_32value(co64_atom->entries, entries);

    return NGX_OK;
}
