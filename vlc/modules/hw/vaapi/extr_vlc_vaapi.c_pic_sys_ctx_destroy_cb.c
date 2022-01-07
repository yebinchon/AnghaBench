
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picture_context_t {int dummy; } ;



__attribute__((used)) static void
pic_sys_ctx_destroy_cb(struct picture_context_t *opaque)
{
    (void) opaque;
}
