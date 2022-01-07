
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNVIS_END ;
 int UNVIS_NOCHAR ;
 int UNVIS_SYNBAD ;
 int UNVIS_VALID ;
 int UNVIS_VALIDPUSH ;
 int isoctal (char) ;

int
unvis(char *cp, char c, int *astate, int flag)
{

 if (flag & UNVIS_END) {
  if (*astate == 130 || *astate == 129) {
   *astate = 133;
   return (UNVIS_VALID);
  }
  return (*astate == 133 ? UNVIS_NOCHAR : UNVIS_SYNBAD);
 }

 switch (*astate) {

 case 133:
  *cp = 0;
  if (c == '\\') {
   *astate = 128;
   return (0);
  }
  *cp = c;
  return (UNVIS_VALID);

 case 128:
  switch(c) {
  case '\\':
   *cp = c;
   *astate = 133;
   return (UNVIS_VALID);
  case '0': case '1': case '2': case '3':
  case '4': case '5': case '6': case '7':
   *cp = (c - '0');
   *astate = 130;
   return (0);
  case 'M':
   *cp = (char) 0200;
   *astate = 132;
   return (0);
  case '^':
   *astate = 134;
   return (0);
  case 'n':
   *cp = '\n';
   *astate = 133;
   return (UNVIS_VALID);
  case 'r':
   *cp = '\r';
   *astate = 133;
   return (UNVIS_VALID);
  case 'b':
   *cp = '\b';
   *astate = 133;
   return (UNVIS_VALID);
  case 'a':
   *cp = '\007';
   *astate = 133;
   return (UNVIS_VALID);
  case 'v':
   *cp = '\v';
   *astate = 133;
   return (UNVIS_VALID);
  case 't':
   *cp = '\t';
   *astate = 133;
   return (UNVIS_VALID);
  case 'f':
   *cp = '\f';
   *astate = 133;
   return (UNVIS_VALID);
  case 's':
   *cp = ' ';
   *astate = 133;
   return (UNVIS_VALID);
  case 'E':
   *cp = '\033';
   *astate = 133;
   return (UNVIS_VALID);
  case '\n':



   *astate = 133;
   return (UNVIS_NOCHAR);
  case '$':



   *astate = 133;
   return (UNVIS_NOCHAR);
  }
  *astate = 133;
  return (UNVIS_SYNBAD);

 case 132:
  if (c == '-')
   *astate = 131;
  else if (c == '^')
   *astate = 134;
  else {
   *astate = 133;
   return (UNVIS_SYNBAD);
  }
  return (0);

 case 131:
  *astate = 133;
  *cp |= c;
  return (UNVIS_VALID);

 case 134:
  if (c == '?')
   *cp |= 0177;
  else
   *cp |= c & 037;
  *astate = 133;
  return (UNVIS_VALID);

 case 130:
  if (isoctal(c)) {



   *cp = (*cp << 3) + (c - '0');
   *astate = 129;
   return (0);
  }



  *astate = 133;
  return (UNVIS_VALIDPUSH);

 case 129:
  *astate = 133;
  if (isoctal(c)) {
   *cp = (*cp << 3) + (c - '0');
   return (UNVIS_VALID);
  }



  return (UNVIS_VALIDPUSH);

 default:



  *astate = 133;
  return (UNVIS_SYNBAD);
 }
}
