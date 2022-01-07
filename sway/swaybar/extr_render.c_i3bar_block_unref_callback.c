
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i3bar_block_unref (void*) ;

__attribute__((used)) static void i3bar_block_unref_callback(void *data) {
 i3bar_block_unref(data);
}
