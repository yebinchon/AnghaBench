
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;

__attribute__((used)) static void usage (const char *path)
{
    printf (
"Usage: %s <path>\n"
"Generate the LibVLC plugins cache for the specified plugins directory.\n",
            path);
}
