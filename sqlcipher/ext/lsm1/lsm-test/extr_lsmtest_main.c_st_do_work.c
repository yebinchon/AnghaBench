
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_work (int,char**) ;

__attribute__((used)) static int st_do_work(int a, char **b) { return do_work(a, b); }
