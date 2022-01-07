
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOBUFS ;
 int ENOMEM ;

__attribute__((used)) static inline int errno_resources(int e) { return e==ENOMEM || e==ENOBUFS; }
