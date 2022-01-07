
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int TLBFuncDesc ;


 int dump_TLBFuncDescOne (int const*) ;

__attribute__((used)) static void dump_TLBFuncDesc(const TLBFuncDesc * pfd, UINT n)
{
 while (n)
 {
   dump_TLBFuncDescOne(pfd);
   ++pfd;
   --n;
 }
}
