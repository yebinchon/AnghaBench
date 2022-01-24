#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_md5_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_8__ {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {TYPE_2__ sid; TYPE_1__* name; } ;
typedef  TYPE_3__ ngx_http_ss_server_t ;
struct TYPE_10__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_4__ ngx_conf_t ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_conf_t *cf,
    ngx_http_ss_server_t *s)
{
    u_char     buf[16];
    ngx_md5_t  md5;

    s->sid.len = 32;
    s->sid.data = FUNC4(cf->pool, 32);
    if (s->sid.data == NULL) {
        return NGX_ERROR;
    }

    FUNC2(&md5);
    FUNC3(&md5, s->name->data, s->name->len);
    FUNC1(buf, &md5);

    FUNC0(s->sid.data, buf, 16);

    return NGX_OK;
}