
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int st_ctime; int st_mtime; } ;
typedef TYPE_1__ SeafStat ;


 scalar_t__ _fstat64 (int,TYPE_1__*) ;
 int fstat (int,TYPE_1__*) ;
 scalar_t__ get_utc_file_time_fd (int,int *,int *) ;

int
seaf_fstat (int fd, SeafStat *st)
{
    return fstat (fd, st);

}
