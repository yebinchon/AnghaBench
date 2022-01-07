
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int HASHSIZE ;

__attribute__((used)) static inline int
hash_fd(int fd) {
 int a = fd >> 24;
 int b = fd >> 12;
 int c = fd;
 return (int)(((uint32_t)(a + b + c)) % HASHSIZE);
}
