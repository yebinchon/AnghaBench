
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SocketTest () ;
 int VirtualTest () ;
 int _stricmp (char*,char*) ;
 int printf (char*,...) ;

int main(int argc, char **argv)
{
   if (argc != 2)
   {
      printf("Usage: %s test_name\n\n", argv[0]);
      printf("Valid test names:\n");
      printf("\tsocket\n");
      printf("\tvirtual\n");
      return 0;
   }

   if (!_stricmp(argv[1], "socket"))
      return SocketTest();
   if (!_stricmp(argv[1], "virtual"))
      return VirtualTest();

   printf("Test '%s' doesn't exist\n", argv[1]);

   return 0;
}
