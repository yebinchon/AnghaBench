
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_block {char* buffer; int len; scalar_t__ ptr; } ;



__attribute__((used)) static void
rball_init(struct read_block * rb, char * buffer, int size) {
 rb->buffer = buffer;
 rb->len = size;
 rb->ptr = 0;
}
