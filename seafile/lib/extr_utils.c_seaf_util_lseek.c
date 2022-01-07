
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint64 ;


 int _lseeki64 (int,int ,int) ;
 int lseek (int,int ,int) ;

gint64
seaf_util_lseek (int fd, gint64 offset, int whence)
{



    return lseek (fd, offset, whence);

}
