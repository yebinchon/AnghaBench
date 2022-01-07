
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HTTP_BAD_REQUEST ;
 int HTTP_FORBIDDEN ;
 int HTTP_INTERNAL_SERVER_ERROR ;
 int HTTP_NOT_FOUND ;
 int HTTP_NO_QUOTA ;
 int HTTP_REPO_CORRUPTED ;
 int HTTP_REPO_DELETED ;
 int SYNC_ERROR_ID_ACCESS_DENIED ;
 int SYNC_ERROR_ID_GENERAL_ERROR ;
 int SYNC_ERROR_ID_QUOTA_FULL ;
 int SYNC_ERROR_ID_SERVER ;
 int SYNC_ERROR_ID_SERVER_REPO_CORRUPT ;
 int SYNC_ERROR_ID_SERVER_REPO_DELETED ;

__attribute__((used)) static int
http_error_to_http_task_error (int status)
{
    if (status == HTTP_BAD_REQUEST)

        return SYNC_ERROR_ID_GENERAL_ERROR;
    else if (status == HTTP_FORBIDDEN)
        return SYNC_ERROR_ID_ACCESS_DENIED;
    else if (status >= HTTP_INTERNAL_SERVER_ERROR)
        return SYNC_ERROR_ID_SERVER;
    else if (status == HTTP_NOT_FOUND)
        return SYNC_ERROR_ID_SERVER;
    else if (status == HTTP_NO_QUOTA)
        return SYNC_ERROR_ID_QUOTA_FULL;
    else if (status == HTTP_REPO_DELETED)
        return SYNC_ERROR_ID_SERVER_REPO_DELETED;
    else if (status == HTTP_REPO_CORRUPTED)
        return SYNC_ERROR_ID_SERVER_REPO_CORRUPT;
    else
        return SYNC_ERROR_ID_GENERAL_ERROR;
}
