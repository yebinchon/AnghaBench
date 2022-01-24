#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_mp4_atom_header_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_15__ {int temporary; int /*<<< orphan*/ * last; int /*<<< orphan*/ * pos; } ;
struct TYPE_13__ {TYPE_1__* out; TYPE_5__ mdia_atom_buf; } ;
typedef  TYPE_3__ ngx_http_mp4_trak_t ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;
struct TYPE_14__ {TYPE_2__ file; } ;
typedef  TYPE_4__ ngx_http_mp4_file_t ;
typedef  TYPE_5__ ngx_buf_t ;
struct TYPE_11__ {TYPE_5__* buf; } ;

/* Variables and functions */
 size_t NGX_HTTP_MP4_MDIA_ATOM ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  ngx_http_mp4_mdia_atoms ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*) ; 
 TYPE_3__* FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char,char,char,char) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_http_mp4_file_t *mp4, uint64_t atom_data_size)
{
    u_char               *atom_header;
    ngx_buf_t            *atom;
    ngx_http_mp4_trak_t  *trak;

    FUNC1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0, "process mdia atom");

    atom_header = FUNC2(mp4);
    FUNC4(atom_header, 'm', 'd', 'i', 'a');

    trak = FUNC3(mp4);

    atom = &trak->mdia_atom_buf;
    atom->temporary = 1;
    atom->pos = atom_header;
    atom->last = atom_header + sizeof(ngx_mp4_atom_header_t);

    trak->out[NGX_HTTP_MP4_MDIA_ATOM].buf = atom;

    return FUNC0(mp4, ngx_http_mp4_mdia_atoms, atom_data_size);
}