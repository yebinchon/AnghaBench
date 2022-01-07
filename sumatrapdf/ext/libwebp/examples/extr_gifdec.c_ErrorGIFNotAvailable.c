
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void ErrorGIFNotAvailable() {
  fprintf(stderr, "GIF support not compiled. Please install the libgif-dev "
          "package before building.\n");
}
