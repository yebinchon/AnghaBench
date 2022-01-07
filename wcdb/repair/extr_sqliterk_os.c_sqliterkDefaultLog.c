
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_loglevel ;


 int fprintf (int ,char*,char*,char const*) ;
 char* sqliterkGetResultCodeDescription (int) ;
 int stderr ;

__attribute__((used)) static void
sqliterkDefaultLog(sqliterk_loglevel level, int result, const char *msg)
{
    fprintf(stderr, "[%s] %s\n", sqliterkGetResultCodeDescription(result), msg);
}
