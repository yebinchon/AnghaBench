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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_mp4_atom_header_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_15__ {int temporary; int /*<<< orphan*/ * last; int /*<<< orphan*/ * pos; } ;
struct TYPE_13__ {size_t smhd_size; TYPE_2__* out; TYPE_5__ smhd_atom_buf; } ;
typedef  TYPE_3__ ngx_http_mp4_trak_t ;
struct TYPE_11__ {int /*<<< orphan*/  log; } ;
struct TYPE_14__ {TYPE_1__ file; } ;
typedef  TYPE_4__ ngx_http_mp4_file_t ;
typedef  TYPE_5__ ngx_buf_t ;
struct TYPE_12__ {TYPE_5__* buf; } ;

/* Variables and functions */
 size_t NGX_HTTP_MP4_SMHD_ATOM ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__) ; 
 TYPE_3__* FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char,char,char,char) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_http_mp4_file_t *mp4, uint64_t atom_data_size)
{
    u_char              *atom_header;
    size_t               atom_size;
    ngx_buf_t            *atom;
    ngx_http_mp4_trak_t  *trak;

    FUNC0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0, "mp4 smhd atom");

    atom_header = FUNC1(mp4);
    atom_size = sizeof(ngx_mp4_atom_header_t) + (size_t) atom_data_size;
    FUNC4(atom_header, atom_size);
    FUNC5(atom_header, 's', 'm', 'h', 'd');

    trak = FUNC3(mp4);

    atom = &trak->smhd_atom_buf;
    atom->temporary = 1;
    atom->pos = atom_header;
    atom->last = atom_header + atom_size;

    trak->smhd_size += atom_size;
    trak->out[NGX_HTTP_MP4_SMHD_ATOM].buf = atom;

    FUNC2(mp4, atom_data_size);

    return NGX_OK;
}