
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optioninfo {int dummy; } ;


 int VERSION_PRINT_QUIT (char*) ;

void of_version(const struct optioninfo *oi, const char *arg, const char *arg2) {
  VERSION_PRINT_QUIT("adnshost");
}
