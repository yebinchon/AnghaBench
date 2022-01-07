
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ req_file_t ;


 int InterlockedIncrement (int *) ;

__attribute__((used)) static inline req_file_t *req_file_addref(req_file_t *req_file)
{
    InterlockedIncrement(&req_file->ref);
    return req_file;
}
