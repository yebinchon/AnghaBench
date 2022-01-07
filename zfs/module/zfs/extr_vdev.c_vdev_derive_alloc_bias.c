
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_alloc_bias_t ;


 int VDEV_ALLOC_BIAS_DEDUP ;
 int VDEV_ALLOC_BIAS_LOG ;
 int VDEV_ALLOC_BIAS_SPECIAL ;
 int VDEV_BIAS_DEDUP ;
 int VDEV_BIAS_LOG ;
 int VDEV_BIAS_NONE ;
 int VDEV_BIAS_SPECIAL ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static vdev_alloc_bias_t
vdev_derive_alloc_bias(const char *bias)
{
 vdev_alloc_bias_t alloc_bias = VDEV_BIAS_NONE;

 if (strcmp(bias, VDEV_ALLOC_BIAS_LOG) == 0)
  alloc_bias = VDEV_BIAS_LOG;
 else if (strcmp(bias, VDEV_ALLOC_BIAS_SPECIAL) == 0)
  alloc_bias = VDEV_BIAS_SPECIAL;
 else if (strcmp(bias, VDEV_ALLOC_BIAS_DEDUP) == 0)
  alloc_bias = VDEV_BIAS_DEDUP;

 return (alloc_bias);
}
