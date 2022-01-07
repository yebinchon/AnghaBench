
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int MMBitmapRef ;
typedef int FILE ;


 int * createBitmapData (int ,size_t*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (int *) ;
 scalar_t__ fwrite (int *,size_t,int,int *) ;

int saveMMBitmapAsBMP(MMBitmapRef bitmap, const char *path)
{
 FILE *fp;
 size_t dataLen;
 uint8_t *data;

 if ((fp = fopen(path, "wb")) == ((void*)0)) return -1;

 if ((data = createBitmapData(bitmap, &dataLen)) == ((void*)0)) {
  fclose(fp);
  return -1;
 }

 if (fwrite(data, dataLen, 1, fp) == 0) {
  free(data);
  fclose(fp);
  return -1;
 }

 free(data);
 fclose(fp);
 return 0;
}
