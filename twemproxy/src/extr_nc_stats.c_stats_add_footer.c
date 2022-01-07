
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct stats_buffer {scalar_t__ len; scalar_t__ size; char* data; } ;
struct stats {struct stats_buffer buf; } ;
typedef int rstatus_t ;


 int NC_ERROR ;
 int NC_OK ;

__attribute__((used)) static rstatus_t
stats_add_footer(struct stats *st)
{
    struct stats_buffer *buf;
    uint8_t *pos;

    buf = &st->buf;

    if (buf->len == buf->size) {
        return NC_ERROR;
    }


    pos = buf->data + buf->len - 1;
    pos[0] = '}';
    pos[1] = '\n';
    buf->len += 1;

    return NC_OK;
}
