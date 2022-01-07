
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isnan (double) ;

__attribute__((used)) static double apply_mapping_from_coord(double low, double high, double value) {
 if (isnan(value)) {
  return value;
 }

 return (value - low) / (high - low);
}
