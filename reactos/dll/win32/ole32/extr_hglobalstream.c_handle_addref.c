
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct handle_wrapper {int ref; } ;


 int InterlockedIncrement (int *) ;

__attribute__((used)) static void handle_addref(struct handle_wrapper *handle)
{
    InterlockedIncrement(&handle->ref);
}
