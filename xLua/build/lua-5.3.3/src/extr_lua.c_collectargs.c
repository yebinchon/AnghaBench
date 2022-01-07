
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int has_E ;
 int has_e ;
 int has_error ;
 int has_i ;
 int has_v ;

__attribute__((used)) static int collectargs (char **argv, int *first) {
  int args = 0;
  int i;
  for (i = 1; argv[i] != ((void*)0); i++) {
    *first = i;
    if (argv[i][0] != '-')
        return args;
    switch (argv[i][1]) {
      case '-':
        if (argv[i][2] != '\0')
          return has_error;
        *first = i + 1;
        return args;
      case '\0':
        return args;
      case 'E':
        if (argv[i][2] != '\0')
          return has_error;
        args |= has_E;
        break;
      case 'i':
        args |= has_i;
      case 'v':
        if (argv[i][2] != '\0')
          return has_error;
        args |= has_v;
        break;
      case 'e':
        args |= has_e;
      case 'l':
        if (argv[i][2] == '\0') {
          i++;
          if (argv[i] == ((void*)0) || argv[i][0] == '-')
            return has_error;
        }
        break;
      default:
        return has_error;
    }
  }
  *first = i;
  return args;
}
