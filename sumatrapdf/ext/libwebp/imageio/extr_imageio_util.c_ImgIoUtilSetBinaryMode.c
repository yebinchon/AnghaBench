
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _O_BINARY ;
 int _fileno (int *) ;
 int _setmode (int ,int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

FILE* ImgIoUtilSetBinaryMode(FILE* file) {






  return file;
}
