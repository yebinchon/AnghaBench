
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int epoll_create (int) ;

__attribute__((used)) static int
sp_create() {
 return epoll_create(1024);
}
