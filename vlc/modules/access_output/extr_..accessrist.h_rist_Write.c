
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int rist_WriteTo (int,void const*,size_t,int *,int ) ;

__attribute__((used)) static inline ssize_t rist_Write(int fd, const void *buf, size_t len)
{
    return rist_WriteTo(fd, buf, len, ((void*)0), 0);
}
