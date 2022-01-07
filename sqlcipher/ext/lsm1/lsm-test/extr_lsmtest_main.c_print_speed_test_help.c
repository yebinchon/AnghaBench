
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void print_speed_test_help(){
  printf(
"\n"
"Repeat the following $repeat times:\n"
"  1. Insert $write key-value pairs. One transaction for each write op.\n"
"  2. Pause for $pause ms.\n"
"  3. Perform $fetch queries on the database.\n"
"\n"
"  Keys are $keysize bytes in size. Values are $valsize bytes in size\n"
"  Both keys and values are pseudo-randomly generated\n"
"\n"
"Options are:\n"
"  -repeat  $repeat                 (default value 10)\n"
"  -write   $write                  (default value 10000)\n"
"  -pause   $pause                  (default value 0)\n"
"  -fetch   $fetch                  (default value 0)\n"
"  -keysize $keysize                (default value 12)\n"
"  -valsize $valsize                (default value 100)\n"
"  -system  $system                 (default value \"lsm\")\n"
"  -trans   $trans                  (default value 0)\n"
"\n"
);
}
