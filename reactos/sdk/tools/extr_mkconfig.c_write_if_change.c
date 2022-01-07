
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int fputs (char*,int *) ;
 unsigned int fread (char*,int,unsigned int,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 unsigned int ftell (int *) ;
 unsigned int fwrite (char*,int,unsigned int,int *) ;
 char* malloc (unsigned int) ;
 scalar_t__ memcmp (char*,char*,unsigned int) ;
 int stderr ;
 unsigned int strlen (char*) ;

int
write_if_change(char* outbuf, char* filename)
{
  FILE* out;
  unsigned int end;
  char* cmpbuf;
  unsigned int stat;

  out = fopen(filename, "rb");
  if (out == ((void*)0))
    {
      out = fopen(filename, "wb");
      if (out == ((void*)0))
 {
   fprintf(stderr, "Unable to create output file\n");
   return(1);
 }
      fputs(outbuf, out);
      fclose(out);
      return(0);
    }

  fseek(out, 0, SEEK_END);
  end = ftell(out);
  cmpbuf = malloc(end);
  if (cmpbuf == ((void*)0))
    {
      fprintf(stderr, "Out of memory\n");
      fclose(out);
      return(1);
    }

  fseek(out, 0, SEEK_SET);
  stat = fread(cmpbuf, 1, end, out);
  if (stat != end)
    {
      fprintf(stderr, "Failed to read data\n");
      fclose(out);
      free(cmpbuf);
      return(1);
    }
  if (end == strlen(outbuf) && memcmp(cmpbuf, outbuf, end) == 0)
    {
      fclose(out);
      free(cmpbuf);
      return(0);
    }

  fclose(out);
  free(cmpbuf);
  out = fopen(filename, "wb");
  if (out == ((void*)0))
    {
      fprintf(stderr, "Unable to create output file\n");
      return(1);
    }

  stat = fwrite(outbuf, 1, strlen(outbuf), out);
  if (strlen(outbuf) != stat)
    {
      fprintf(stderr, "Unable to write output file\n");
      fclose(out);
      return(1);
    }
  fclose(out);
  return(0);
}
