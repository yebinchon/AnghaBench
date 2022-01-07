
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int round (int) ;

__attribute__((used)) static int scale_length(int length, int offset, float scale) {
 return round((offset + length) * scale) - round(offset * scale);
}
