
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* convert_path (char const*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 size_t my_atoi (char const*) ;
 int process_file (char*,size_t) ;
 int stderr ;

int main ( int argc, const char** argv )
{
 char* path;
 size_t offset;
 int res;

 if ( argc != 3 )
 {
  fprintf(stderr, "Usage: raddr2line <exefile> <offset>\n");
  exit(1);
 }

 path = convert_path ( argv[1] );
 offset = my_atoi ( argv[2] );

 res = process_file ( path, offset );

 free ( path );

 return res;
}
