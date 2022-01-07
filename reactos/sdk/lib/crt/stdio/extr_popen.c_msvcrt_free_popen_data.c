
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int ) ;
 int popen_handles ;

void msvcrt_free_popen_data(void)
{
    free(popen_handles);
}
