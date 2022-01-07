
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct stat_array {int count; int data; } ;


 int MAX (int ,int ) ;
 int array64_max (int ,int ) ;

__attribute__((used)) static uint64_t
stat_histo_max(struct stat_array *nva, unsigned int len)
{
 uint64_t max = 0;
 int i;
 for (i = 0; i < len; i++)
  max = MAX(max, array64_max(nva[i].data, nva[i].count));

 return (max);
}
