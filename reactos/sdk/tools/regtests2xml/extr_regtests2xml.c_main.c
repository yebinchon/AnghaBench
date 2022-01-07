
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HELP ;
 char* convert_path (char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int generate_xml () ;
 int * out ;
 int parse_file (char*) ;
 int printf (char*) ;
 int puts (int ) ;

int main(int argc, char **argv)
{
  char *input_file;
  char *output_file;

  if (argc < 3)
    {
      puts(HELP);
      return 1;
    }

  input_file = convert_path(argv[1]);
  if (input_file[0] == 0)
    {
      free(input_file);
      printf("Missing input-filename\n");
      return 1;
    }

  output_file = convert_path(argv[2]);
  if (output_file[0] == 0)
    {
      free(output_file);
      free(input_file);
      printf("Missing output-filename\n");
      return 1;
    }

  out = fopen(output_file, "wb");
  if (out == ((void*)0))
    {
        free(input_file);
        free(output_file);
     printf("Cannot open output file");
     return 1;
     }

  parse_file(input_file);

  generate_xml();

  free(input_file);
  free(output_file);
  fclose(out);

  return 0;
}
