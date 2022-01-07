
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zoneid_t ;


 int GLOBAL_ZONEID ;

zoneid_t
getzoneid()
{
 return (GLOBAL_ZONEID);
}
