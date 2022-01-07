
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gGetHostByNameJmp ;
 int gResolveSig ;
 int longjmp (int ,int) ;
 int siglongjmp (int ,int) ;

__attribute__((used)) static void
CancelGetHostByName(int sigNum)
{






 longjmp(gGetHostByNameJmp, (sigNum != 0) ? 1 : 0);

}
