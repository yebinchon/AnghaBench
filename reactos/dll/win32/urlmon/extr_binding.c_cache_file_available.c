
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {TYPE_1__* stgmed_buf; scalar_t__ use_cache_file; } ;
struct TYPE_4__ {scalar_t__ file; int cache_file; } ;
typedef TYPE_2__ Binding ;


 scalar_t__ CreateFileW (int const*,int ,int,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int WARN (char*,int ) ;
 int heap_free (int ) ;
 int heap_strdupW (int const*) ;

__attribute__((used)) static void cache_file_available(Binding *This, const WCHAR *file_name)
{
    heap_free(This->stgmed_buf->cache_file);
    This->stgmed_buf->cache_file = heap_strdupW(file_name);

    if(This->use_cache_file) {
        This->stgmed_buf->file = CreateFileW(file_name, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE, ((void*)0),
                OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
        if(This->stgmed_buf->file == INVALID_HANDLE_VALUE)
            WARN("CreateFile failed: %u\n", GetLastError());
    }
}
