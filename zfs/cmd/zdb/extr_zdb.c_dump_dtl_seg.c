
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;


 int printf (char*,char*,int ,int ,int ) ;

__attribute__((used)) static void
dump_dtl_seg(void *arg, uint64_t start, uint64_t size)
{
 char *prefix = arg;

 (void) printf("%s [%llu,%llu) length %llu\n",
     prefix,
     (u_longlong_t)start,
     (u_longlong_t)(start + size),
     (u_longlong_t)(size));
}
