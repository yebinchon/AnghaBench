
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int free (void*) ;
 void* load_file (char const*,size_t*) ;
 int process_data (void*,size_t) ;
 int stderr ;

int
process_file ( const char* file_name, size_t offset )
{
 void* FileData;
 size_t FileSize;
 int res = 1;

 FileData = load_file ( file_name, &FileSize );
 if ( !FileData )
 {
  fprintf ( stderr, "An error occured loading '%s'\n", file_name );
 }
 else
 {
  res = process_data ( FileData, offset );
  free ( FileData );
 }

 return res;
}
