
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;
 scalar_t__ isdigit (unsigned char const) ;

int strverscmp (const char *s1, const char *s2)
{
  const unsigned char *p1 = (const unsigned char *) s1;
  const unsigned char *p2 = (const unsigned char *) s2;



  static const uint8_t next_state[] =
  {

                 129, 130, 128,
                 129, 130, 130,
                 129, 131, 131,
                 129, 131, 128
  };

  static const int8_t result_type[] =
  {


                 133, 133, 133, 133, 132, 133, 133, 133, 133,
                 133, -1, -1, +1, 132, 132, +1, 132, 132,
                 133, 133, 133, 133, 133, 133, 133, 133, 133,
                 133, +1, +1, -1, 133, 133, -1, 133, 133
  };

  if (p1 == p2)
    return 0;

  unsigned char c1 = *p1++;
  unsigned char c2 = *p2++;

  int state = 129 + ((c1 == '0') + (isdigit (c1) != 0));

  int diff;
  while ((diff = c1 - c2) == 0)
    {
      if (c1 == '\0')
 return diff;

      state = next_state[state];
      c1 = *p1++;
      c2 = *p2++;
      state += (c1 == '0') + (isdigit (c1) != 0);
    }

  state = result_type[state * 3 + (((c2 == '0') + (isdigit (c2) != 0)))];

  switch (state)
  {
    case 133:
      return diff;

    case 132:
      while (isdigit (*p1++))
 if (!isdigit (*p2++))
   return 1;

      return isdigit (*p2) ? -1 : diff;

    default:
      return state;
  }
}
