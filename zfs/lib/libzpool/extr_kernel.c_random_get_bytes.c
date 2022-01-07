
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int random_fd ;
 int random_get_bytes_common (int *,size_t,int ) ;

int
random_get_bytes(uint8_t *ptr, size_t len)
{
 return (random_get_bytes_common(ptr, len, random_fd));
}
