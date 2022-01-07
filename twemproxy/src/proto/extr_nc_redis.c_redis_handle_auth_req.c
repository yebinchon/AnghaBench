
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ len; int data; } ;
struct server_pool {TYPE_1__ redis_auth; int require_auth; } ;
struct msg {int keys; scalar_t__ owner; } ;
struct keypos {int * start; int * end; } ;
struct conn {int authenticated; scalar_t__ owner; int proxy; scalar_t__ client; } ;
typedef int rstatus_t ;
struct TYPE_8__ {int len; int data; } ;
struct TYPE_7__ {int len; int data; } ;
struct TYPE_6__ {int len; int data; } ;


 int ASSERT (int) ;
 struct keypos* array_get (int ,int ) ;
 scalar_t__ memcmp (int ,int *,scalar_t__) ;
 int msg_append (struct msg*,int ,int ) ;
 TYPE_4__ rsp_invalid_password ;
 TYPE_3__ rsp_no_password ;
 TYPE_2__ rsp_ok ;

__attribute__((used)) static rstatus_t
redis_handle_auth_req(struct msg *req, struct msg *rsp)
{
    struct conn *conn = (struct conn *)rsp->owner;
    struct server_pool *pool;
    struct keypos *kpos;
    uint8_t *key;
    uint32_t keylen;
    bool valid;

    ASSERT(conn->client && !conn->proxy);

    pool = (struct server_pool *)conn->owner;

    if (!pool->require_auth) {




        return msg_append(rsp, rsp_no_password.data, rsp_no_password.len);
    }

    kpos = array_get(req->keys, 0);
    key = kpos->start;
    keylen = (uint32_t)(kpos->end - kpos->start);
    valid = (keylen == pool->redis_auth.len) &&
            (memcmp(pool->redis_auth.data, key, keylen) == 0) ? 1 : 0;
    if (valid) {
        conn->authenticated = 1;
        return msg_append(rsp, rsp_ok.data, rsp_ok.len);
    }
    conn->authenticated = 0;
    return msg_append(rsp, rsp_invalid_password.data, rsp_invalid_password.len);
}
