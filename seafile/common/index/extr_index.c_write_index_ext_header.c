
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WriteIndexInfo ;


 scalar_t__ ce_write (int *,int,unsigned int*,int) ;
 unsigned int htonl (unsigned int) ;

__attribute__((used)) static int write_index_ext_header(WriteIndexInfo *info, int fd,
                                  unsigned int ext, unsigned int sz)
{
    ext = htonl(ext);
    sz = htonl(sz);
    return ((ce_write(info, fd, &ext, 4) < 0) ||
            (ce_write(info, fd, &sz, 4) < 0)) ? -1 : 0;
}
