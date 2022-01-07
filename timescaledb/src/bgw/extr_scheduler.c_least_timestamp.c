
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TimestampTz ;



__attribute__((used)) static TimestampTz
least_timestamp(TimestampTz left, TimestampTz right)
{
 return (left < right ? left : right);
}
