
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int h2l_scale_i ;

void stbi_hdr_to_ldr_scale(float scale) { h2l_scale_i = 1/scale; }
