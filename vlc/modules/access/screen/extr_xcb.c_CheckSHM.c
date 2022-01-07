
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_shm_query_version_reply_t ;
typedef int xcb_shm_query_version_cookie_t ;
typedef int xcb_connection_t ;


 int free (int *) ;
 int xcb_shm_query_version (int *) ;
 int * xcb_shm_query_version_reply (int *,int ,int *) ;

__attribute__((used)) static bool CheckSHM (xcb_connection_t *conn)
{
    (void) conn;
    return 0;

}
