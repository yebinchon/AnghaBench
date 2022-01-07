
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int urlcache_header ;
struct TYPE_3__ {int mutex; } ;
typedef TYPE_1__ cache_container ;
typedef int BOOL ;


 int ReleaseMutex (int ) ;
 int UnmapViewOfFile (int *) ;

__attribute__((used)) static BOOL cache_container_unlock_index(cache_container *pContainer, urlcache_header *pHeader)
{

    ReleaseMutex(pContainer->mutex);
    return UnmapViewOfFile(pHeader);
}
