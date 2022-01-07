
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input ;
typedef int args ;
typedef scalar_t__ DWORD ;


 int ConvertPathCase (char*,char*) ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_PATH_NOT_FOUND ;
 int GetCurrentDirectory (int,char*) ;
 scalar_t__ GetLastError () ;
 int MAX_PATH ;
 int MSG_CONSOLE_HINT ;
 int PrintMessage (int ) ;
 int ProcessCommandLine (int,char const**) ;
 int SetConsoleCtrlHandler (int *,int ) ;
 int SetConsoleTitle (int ) ;
 int SetCurrentDirectory (char*) ;
 char* SystemError (scalar_t__) ;
 int TRUE ;
 int VFD_OK ;
 int VFD_PRODUCT_DESC ;
 int Version (int *) ;
 int ZeroMemory (char**,int) ;
 scalar_t__ _stricmp (char*,char*) ;
 int _strnicmp (char*,char*,int) ;
 int fflush (int ) ;
 char* fgets (char*,int,int ) ;
 char* help_progname ;
 scalar_t__ isalpha (char) ;
 int printf (char*,...) ;
 int stdin ;
 int stdout ;
 int strlen (char*) ;
 int system (char*) ;
 scalar_t__ toupper (char) ;

int InteractiveConsole()
{
 char input[1024];

 int argc;
 char *args[10];

 char sepa;
 char *p;



 SetConsoleCtrlHandler(((void*)0), TRUE);



 SetConsoleTitle(VFD_PRODUCT_DESC);



 Version(((void*)0));

 PrintMessage(MSG_CONSOLE_HINT);



 help_progname = "";



 for (;;) {



  printf("[VFD] ");
  fflush(stdout);



  fflush(stdin);
  p = fgets(input, sizeof(input), stdin);

  if (p == ((void*)0)) {



   printf("exit\n");
   break;
  }



  while (*p == ' ' || *p == '\t' || *p == '\n') {
   p++;
  }

  if (*p == '\0') {



   continue;
  }



  if (!_strnicmp(p, "dir", 3) ||
   !_strnicmp(p, "attrib", 6)) {




   system(p);
   printf("\n");
   continue;
  }
  else if (*p == '.') {



   system(p + 1);
   printf("\n");
   continue;
  }



  argc = 0;
  ZeroMemory(args, sizeof(args));

  do {


   args[argc++] = p;



   if (*p == '\"' || *p == '\'') {
    sepa = *(p++);
   }
   else {
    sepa = ' ';
   }



   while (*p && *p != '\n') {
    if (sepa == ' ') {
     if (*p == '\t' || *p == ' ') {
      break;
     }
    }
    else {
     if (*p == sepa) {
      sepa = ' ';
     }
    }
    p++;
   }



   if (*p) {
    *(p++) = '\0';
   }



   while (*p == ' ' || *p == '\t' || *p == '\n') {
    p++;
   }

   if (*p == '\0') {



    break;
   }
  }
  while (argc < sizeof(args) / sizeof(args[0]));



  if (!_stricmp(args[0], "exit") ||
   !_stricmp(args[0], "quit") ||
   !_stricmp(args[0], "bye")) {



   break;
  }
  else if (!_stricmp(args[0], "cd") ||
   !_stricmp(args[0], "chdir")) {



   if (args[1]) {
    char path[MAX_PATH];
    int i;



    if (_stricmp(args[1], "/d")) {
     i = 1;
    }
    else {
     i = 2;
    }

    p = args[i];

    if (*p == '\"' || *p == '\'') {



     p++;

     while (*p && *p != *args[i]) {
      p++;
     }

     args[i]++;
     *p = '\0';
    }
    else {




     while (i < argc - 1) {
      *(args[i] + strlen(args[i])) = ' ';
      i++;
     }
    }



    ConvertPathCase(p, path);

    if (!SetCurrentDirectory(path)) {
     DWORD ret = GetLastError();

     if (ret == ERROR_FILE_NOT_FOUND) {
      ret = ERROR_PATH_NOT_FOUND;
     }

     printf("%s", SystemError(ret));
    }
   }
   else {
    if (!GetCurrentDirectory(sizeof(input), input)) {
     printf("%s", SystemError(GetLastError()));
    }
    else {
     printf("%s\n", input);
    }
   }
  }
  else if (isalpha(*args[0]) &&
   *(args[0] + 1) == ':' &&
   *(args[0] + 2) == '\0') {



   *args[0] = (char)toupper(*args[0]);
   *(args[0] + 2) = '\\';
   *(args[0] + 3) = '\0';

   if (!SetCurrentDirectory(args[0])) {
    printf("%s", SystemError(GetLastError()));
   }
  }
  else {



   ProcessCommandLine(argc, (const char **)args);
  }

  printf("\n");
 }

 return VFD_OK;
}
