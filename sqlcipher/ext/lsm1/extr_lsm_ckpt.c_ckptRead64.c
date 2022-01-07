
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int i64 ;



__attribute__((used)) static i64 ckptRead64(u32 *a){
  return (((i64)a[0]) << 32) + (i64)a[1];
}
