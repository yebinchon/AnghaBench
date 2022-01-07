
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int rist_ReadFrom (int,void*,size_t,int *,int *) ;

__attribute__((used)) static inline ssize_t rist_Read(int fd, void *buf, size_t len)
{
    return rist_ReadFrom(fd, buf, len, ((void*)0), ((void*)0));
}
