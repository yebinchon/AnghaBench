
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int u_char ;
typedef int ngx_mp4_atom_header_t ;
typedef int ngx_int_t ;
struct TYPE_15__ {int temporary; int * last; int * pos; } ;
struct TYPE_13__ {size_t dinf_size; TYPE_2__* out; TYPE_5__ dinf_atom_buf; } ;
typedef TYPE_3__ ngx_http_mp4_trak_t ;
struct TYPE_11__ {int log; } ;
struct TYPE_14__ {TYPE_1__ file; } ;
typedef TYPE_4__ ngx_http_mp4_file_t ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_12__ {TYPE_5__* buf; } ;


 size_t NGX_HTTP_MP4_DINF_ATOM ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int * ngx_mp4_atom_header (TYPE_4__*) ;
 int ngx_mp4_atom_next (TYPE_4__*,scalar_t__) ;
 TYPE_3__* ngx_mp4_last_trak (TYPE_4__*) ;
 int ngx_mp4_set_32value (int *,size_t) ;
 int ngx_mp4_set_atom_name (int *,char,char,char,float) ;

__attribute__((used)) static ngx_int_t
ngx_http_mp4_read_dinf_atom(ngx_http_mp4_file_t *mp4, uint64_t atom_data_size)
{
    u_char *atom_header;
    size_t atom_size;
    ngx_buf_t *atom;
    ngx_http_mp4_trak_t *trak;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0, "mp4 dinf atom");

    atom_header = ngx_mp4_atom_header(mp4);
    atom_size = sizeof(ngx_mp4_atom_header_t) + (size_t) atom_data_size;
    ngx_mp4_set_32value(atom_header, atom_size);
    ngx_mp4_set_atom_name(atom_header, 'd', 'i', 'n', 'f');

    trak = ngx_mp4_last_trak(mp4);

    atom = &trak->dinf_atom_buf;
    atom->temporary = 1;
    atom->pos = atom_header;
    atom->last = atom_header + atom_size;

    trak->dinf_size += atom_size;
    trak->out[NGX_HTTP_MP4_DINF_ATOM].buf = atom;

    ngx_mp4_atom_next(mp4, atom_data_size);

    return NGX_OK;
}
