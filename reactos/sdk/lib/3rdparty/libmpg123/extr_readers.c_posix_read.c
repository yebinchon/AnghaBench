
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int read (int,void*,size_t) ;

__attribute__((used)) static ssize_t posix_read(int fd, void *buf, size_t count){ return read(fd, buf, count); }
