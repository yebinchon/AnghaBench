
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef char ULONG ;
typedef int HANDLE ;


 int * EngAllocMem (int ,char,char) ;
 int * EngAllocUserMem (char,char) ;
 int EngFreeMem (int *) ;
 int EngFreeUserMem (int *) ;
 int FL_ZERO_MEMORY ;
 int _AssertNotEqualValue (int *,int *) ;

__attribute__((used)) static void RunTest()
{
}
