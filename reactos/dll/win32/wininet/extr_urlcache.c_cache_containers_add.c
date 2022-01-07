
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entry; struct TYPE_4__* path; int * mutex; void* cache_prefix; int default_entry_type; scalar_t__ file_size; int * mapping; } ;
typedef TYPE_1__ cache_container ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int CharLowerW (int ) ;
 int * CreateMutexW (int *,int ,int ) ;
 int ERR (char*,int ) ;
 int FALSE ;
 int GetLastError () ;
 int TRUE ;
 int UrlContainers ;
 int cache_container_create_object_name (int ,char) ;
 void* heap_alloc (int) ;
 int heap_free (TYPE_1__*) ;
 TYPE_1__* heap_strdupW (int ) ;
 int list_add_head (int *,int *) ;
 int memcpy (void*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static BOOL cache_containers_add(const char *cache_prefix, LPCWSTR path,
        DWORD default_entry_type, LPWSTR mutex_name)
{
    cache_container *pContainer = heap_alloc(sizeof(cache_container));
    int cache_prefix_len = strlen(cache_prefix);

    if (!pContainer)
    {
        return FALSE;
    }

    pContainer->mapping = ((void*)0);
    pContainer->file_size = 0;
    pContainer->default_entry_type = default_entry_type;

    pContainer->path = heap_strdupW(path);
    if (!pContainer->path)
    {
        heap_free(pContainer);
        return FALSE;
    }

    pContainer->cache_prefix = heap_alloc(cache_prefix_len+1);
    if (!pContainer->cache_prefix)
    {
        heap_free(pContainer->path);
        heap_free(pContainer);
        return FALSE;
    }

    memcpy(pContainer->cache_prefix, cache_prefix, cache_prefix_len+1);

    CharLowerW(mutex_name);
    cache_container_create_object_name(mutex_name, '!');

    if ((pContainer->mutex = CreateMutexW(((void*)0), FALSE, mutex_name)) == ((void*)0))
    {
        ERR("couldn't create mutex (error is %d)\n", GetLastError());
        heap_free(pContainer->path);
        heap_free(pContainer);
        return FALSE;
    }

    list_add_head(&UrlContainers, &pContainer->entry);

    return TRUE;
}
