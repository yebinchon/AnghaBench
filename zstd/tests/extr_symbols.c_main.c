
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,void const*) ;
 void** symbols ;

int main(int argc, const char** argv) {
  const void **symbol;
  (void)argc;
  (void)argv;

  for (symbol = symbols; *symbol != ((void*)0); ++symbol) {
    printf("%p\n", *symbol);
  }
  return 0;
}
