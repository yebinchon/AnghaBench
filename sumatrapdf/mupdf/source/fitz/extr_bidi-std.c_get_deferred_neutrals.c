
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_bidi_level ;
typedef int fz_bidi_chartype ;
typedef int fz_bidi_action ;


 int En ;
 int embedding_direction (int ) ;

__attribute__((used)) static fz_bidi_chartype
get_deferred_neutrals(fz_bidi_action action, fz_bidi_level level)
{
 action = (action >> 4) & 0xF;
 if (action == (En >> 4))
  return embedding_direction(level);
 else
  return action;
}
