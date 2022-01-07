
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int notail (char*) ;

__attribute__((used)) static int collectargs (char **argv, int *pi, int *pv, int *pe) {
  int i;
  for (i = 1; argv[i] != ((void*)0); i++) {
    if (argv[i][0] != '-')
        return i;
    switch (argv[i][1]) {
      case '-':
        notail(argv[i]);
        return (argv[i+1] != ((void*)0) ? i+1 : 0);
      case '\0':
        return i;
      case 'i':
        notail(argv[i]);
        *pi = 1;
      case 'v':
        notail(argv[i]);
        *pv = 1;
        break;
      case 'e':
        *pe = 1;
      case 'l':
        if (argv[i][2] == '\0') {
          i++;
          if (argv[i] == ((void*)0)) return -1;
        }
        break;
      default: return -1;
    }
  }
  return 0;
}
