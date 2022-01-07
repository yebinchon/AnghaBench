
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int h2l_gamma_i ;

void stbi_hdr_to_ldr_gamma(float gamma) { h2l_gamma_i = 1/gamma; }
