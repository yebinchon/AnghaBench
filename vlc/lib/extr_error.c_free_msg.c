
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* oom ;

__attribute__((used)) static void free_msg (void *msg)
{
    if (msg != oom)
        free (msg);
}
