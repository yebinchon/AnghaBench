
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_bidi_chartype ;


 int BDI_L ;
 int BDI_R ;
 scalar_t__ odd (int ) ;

__attribute__((used)) static fz_bidi_chartype embedding_direction(fz_bidi_chartype level)
{
 return odd(level) ? BDI_R : BDI_L;
}
