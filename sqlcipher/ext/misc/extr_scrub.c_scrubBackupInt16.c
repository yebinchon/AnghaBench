
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int const u32 ;



__attribute__((used)) static u32 scrubBackupInt16(const u8 *a){
  return (a[0]<<8) + a[1];
}
