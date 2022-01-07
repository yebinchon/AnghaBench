
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int id ;
typedef scalar_t__ be32_t ;


 int EIO ;
 int QCOW2_MAGIC ;
 int errno ;
 scalar_t__ htobe32 (int ) ;
 int pread (int,scalar_t__*,int,int ) ;

int qcow2_detect(int fd) {
        be32_t id;
        ssize_t l;

        l = pread(fd, &id, sizeof(id), 0);
        if (l < 0)
                return -errno;
        if (l != sizeof(id))
                return -EIO;

        return htobe32(QCOW2_MAGIC) == id;
}
