
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct string {int data; int len; } ;
struct stats_buffer {int len; int size; int * data; } ;
struct stats {struct stats_buffer buf; } ;
typedef int rstatus_t ;


 int NC_ERROR ;
 int NC_OK ;
 int nc_snprintf (int *,size_t,char*,int ,int ) ;

__attribute__((used)) static rstatus_t
stats_begin_nesting(struct stats *st, struct string *key)
{
    struct stats_buffer *buf;
    uint8_t *pos;
    size_t room;
    int n;

    buf = &st->buf;
    pos = buf->data + buf->len;
    room = buf->size - buf->len - 1;

    n = nc_snprintf(pos, room, "\"%.*s\": {", key->len, key->data);
    if (n < 0 || n >= (int)room) {
        return NC_ERROR;
    }

    buf->len += (size_t)n;

    return NC_OK;
}
