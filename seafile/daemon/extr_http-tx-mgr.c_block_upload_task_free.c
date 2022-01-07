
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BlockUploadTask ;


 int g_free (int *) ;

__attribute__((used)) static void
block_upload_task_free (BlockUploadTask *task)
{
    g_free (task);
}
