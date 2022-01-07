
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linebuf {scalar_t__ len; scalar_t__ size; } ;



__attribute__((used)) static void linebuf_init(struct linebuf *buf) {
        buf->size = 0;
        buf->len = 0;
}
