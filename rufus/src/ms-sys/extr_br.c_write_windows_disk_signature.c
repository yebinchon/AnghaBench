
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FILE ;


 int write_data (int *,int,int *,int) ;

int write_windows_disk_signature(FILE *fp, uint32_t tWDS)
{
   return write_data(fp, 0x1b8, &tWDS, 4);
}
