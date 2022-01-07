
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_bidi_chartype ;
typedef int fz_bidi_action ;



__attribute__((used)) static
fz_bidi_chartype get_resolved_type(fz_bidi_action action)
{
 return action & 0xF;
}
