
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int iswhite(int ch)
{
 return
  ch == '\000' || ch == '\011' || ch == '\012' ||
  ch == '\014' || ch == '\015' || ch == '\040';
}
