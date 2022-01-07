
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;

__attribute__((used)) static void unreachable_callback(void *data)
{
    (void) data;
    abort();
}
