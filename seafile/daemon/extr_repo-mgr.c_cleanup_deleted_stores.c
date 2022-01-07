
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_USEC_PER_SEC ;
 int cleanup_deleted_stores_by_type (char*) ;
 int g_usleep (int) ;

__attribute__((used)) static void *
cleanup_deleted_stores (void *vdata)
{
    while (1) {
        cleanup_deleted_stores_by_type ("commits");
        cleanup_deleted_stores_by_type ("fs");
        cleanup_deleted_stores_by_type ("blocks");
        g_usleep (60 * G_USEC_PER_SEC);
    }
    return ((void*)0);
}
