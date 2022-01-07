
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Int32 ;


 scalar_t__ exitValue ;

__attribute__((used)) static
void setExit ( Int32 v )
{
   if (v > exitValue) exitValue = v;
}
