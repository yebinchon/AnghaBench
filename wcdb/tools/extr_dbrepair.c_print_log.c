
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_loglevel ;


 int fputc (char,int ) ;
 int fputs (char const*,int ) ;
 int stderr ;

__attribute__((used)) static void print_log(sqliterk_loglevel level, int result, const char* msg)
{
 fputs(msg, stderr);
 fputc('\n', stderr);
}
