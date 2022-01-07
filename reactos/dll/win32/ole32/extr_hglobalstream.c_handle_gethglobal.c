
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct handle_wrapper {int hglobal; } ;
typedef int HGLOBAL ;



__attribute__((used)) static HGLOBAL handle_gethglobal(struct handle_wrapper *handle)
{
    return handle->hglobal;
}
