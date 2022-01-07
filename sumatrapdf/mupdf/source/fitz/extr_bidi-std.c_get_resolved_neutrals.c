
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_bidi_chartype ;
typedef int fz_bidi_action ;


 int In ;

__attribute__((used)) static fz_bidi_chartype get_resolved_neutrals(fz_bidi_action action)
{
 action = action & 0xF;
 if (action == In)
  return 0;
 else
  return action;
}
