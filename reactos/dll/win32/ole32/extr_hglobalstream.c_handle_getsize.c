
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct handle_wrapper {int size; } ;
typedef int ULONG ;



__attribute__((used)) static ULONG handle_getsize(struct handle_wrapper *handle)
{
    return handle->size;
}
