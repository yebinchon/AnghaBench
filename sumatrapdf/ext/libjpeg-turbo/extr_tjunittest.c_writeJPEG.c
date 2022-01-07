
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int bailout () ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fwrite (unsigned char*,unsigned long,int,int *) ;
 int printf (char*,char*,char*) ;
 char* strerror (int ) ;

void writeJPEG(unsigned char *jpegBuf, unsigned long jpegSize, char *filename)
{
 FILE *file=fopen(filename, "wb");
 if(!file || fwrite(jpegBuf, jpegSize, 1, file)!=1)
 {
  printf("ERROR: Could not write to %s.\n%s\n", filename, strerror(errno));
  bailout();
 }

 bailout:
 if(file) fclose(file);
}
