
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_16__ {int chunk; } ;
typedef TYPE_4__ ngx_mp4_stsc_entry_t ;
struct TYPE_17__ {int entries; int size; } ;
typedef TYPE_5__ ngx_mp4_stsc_atom_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_18__ {int sample_to_chunk_entries; size_t size; TYPE_3__* out; scalar_t__ start_chunk; } ;
typedef TYPE_6__ ngx_http_mp4_trak_t ;
struct TYPE_13__ {int data; } ;
struct TYPE_14__ {int log; TYPE_1__ name; } ;
struct TYPE_19__ {TYPE_2__ file; } ;
typedef TYPE_7__ ngx_http_mp4_file_t ;
struct TYPE_20__ {scalar_t__ pos; scalar_t__ last; } ;
typedef TYPE_8__ ngx_buf_t ;
struct TYPE_15__ {TYPE_8__* buf; } ;


 scalar_t__ NGX_ERROR ;
 size_t NGX_HTTP_MP4_STSC_ATOM ;
 size_t NGX_HTTP_MP4_STSC_DATA ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_mp4_crop_stsc_data (TYPE_7__*,TYPE_6__*,int) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 size_t ngx_mp4_get_32value (int ) ;
 int ngx_mp4_set_32value (int ,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_http_mp4_update_stsc_atom(ngx_http_mp4_file_t *mp4,
    ngx_http_mp4_trak_t *trak)
{
    size_t atom_size;
    uint32_t chunk;
    ngx_buf_t *atom, *data;
    ngx_mp4_stsc_atom_t *stsc_atom;
    ngx_mp4_stsc_entry_t *entry, *end;







    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                   "mp4 stsc atom update");

    data = trak->out[NGX_HTTP_MP4_STSC_DATA].buf;

    if (data == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, mp4->file.log, 0,
                      "no mp4 stsc atoms were found in \"%s\"",
                      mp4->file.name.data);
        return NGX_ERROR;
    }

    if (trak->sample_to_chunk_entries == 0) {
        ngx_log_error(NGX_LOG_ERR, mp4->file.log, 0,
                      "zero number of entries in stsc atom in \"%s\"",
                      mp4->file.name.data);
        return NGX_ERROR;
    }

    if (ngx_http_mp4_crop_stsc_data(mp4, trak, 1) != NGX_OK) {
        return NGX_ERROR;
    }

    if (ngx_http_mp4_crop_stsc_data(mp4, trak, 0) != NGX_OK) {
        return NGX_ERROR;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                   "sample-to-chunk entries:%uD",
                   trak->sample_to_chunk_entries);

    entry = (ngx_mp4_stsc_entry_t *) data->pos;
    end = (ngx_mp4_stsc_entry_t *) data->last;

    while (entry < end) {
        chunk = ngx_mp4_get_32value(entry->chunk);
        chunk -= trak->start_chunk;
        ngx_mp4_set_32value(entry->chunk, chunk);
        entry++;
    }

    atom_size = sizeof(ngx_mp4_stsc_atom_t)
                + trak->sample_to_chunk_entries * sizeof(ngx_mp4_stsc_entry_t);

    trak->size += atom_size;

    atom = trak->out[NGX_HTTP_MP4_STSC_ATOM].buf;
    stsc_atom = (ngx_mp4_stsc_atom_t *) atom->pos;

    ngx_mp4_set_32value(stsc_atom->size, atom_size);
    ngx_mp4_set_32value(stsc_atom->entries, trak->sample_to_chunk_entries);

    return NGX_OK;
}
