
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DN_MAX_INDBLKSHIFT ;
 int DN_MIN_INDBLKSHIFT ;
 int ztest_random (int) ;

__attribute__((used)) static int
ztest_random_ibshift(void)
{
 return (DN_MIN_INDBLKSHIFT +
     ztest_random(DN_MAX_INDBLKSHIFT - DN_MIN_INDBLKSHIFT + 1));
}
