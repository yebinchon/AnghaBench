
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RTF_Info ;


 int RTFRouteToken (int *) ;
 int RTFSkipGroup (int *) ;

__attribute__((used)) static void ReadInfoGroup(RTF_Info *info)
{
 RTFSkipGroup (info);
 RTFRouteToken (info);
}
