
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32 scrubBackupInt32(const u8 *a){
  u32 v = a[3];
  v += ((u32)a[2])<<8;
  v += ((u32)a[1])<<16;
  v += ((u32)a[0])<<24;
  return v;
}
