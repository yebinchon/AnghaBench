
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAGS_EXEC ;
 int FLAGS_INTERACTIVE ;
 int FLAGS_NOENV ;
 int FLAGS_OPTION ;
 int FLAGS_VERSION ;
 int notail (char*) ;

__attribute__((used)) static int collectargs(char **argv, int *flags)
{
  int i;
  for (i = 1; argv[i] != ((void*)0); i++) {
    if (argv[i][0] != '-')
      return i;
    switch (argv[i][1]) {
    case '-':
      notail(argv[i]);
      return i+1;
    case '\0':
      return i;
    case 'i':
      notail(argv[i]);
      *flags |= FLAGS_INTERACTIVE;

    case 'v':
      notail(argv[i]);
      *flags |= FLAGS_VERSION;
      break;
    case 'e':
      *flags |= FLAGS_EXEC;
    case 'j':
    case 'l':
      *flags |= FLAGS_OPTION;
      if (argv[i][2] == '\0') {
 i++;
 if (argv[i] == ((void*)0)) return -1;
      }
      break;
    case 'O': break;
    case 'b':
      if (*flags) return -1;
      *flags |= FLAGS_EXEC;
      return i+1;
    case 'E':
      *flags |= FLAGS_NOENV;
      break;
    default: return -1;
    }
  }
  return i;
}
