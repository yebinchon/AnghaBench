
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_flags; } ;


 int FAPPEND ;
 int FDIRECT ;
 int FDSYNC ;
 int FSYNC ;
 int IOCB_APPEND ;
 int IOCB_DIRECT ;
 int IOCB_DSYNC ;
 int IOCB_SYNC ;

__attribute__((used)) static inline int
zfs_io_flags(struct kiocb *kiocb)
{
 int flags = 0;
 return (flags);
}
