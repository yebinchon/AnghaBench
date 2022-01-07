
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int vDbgPrintExWithPrefix (char*,int,int ,char const*,int ) ;

__attribute__((used)) static int default_dbg_vprintf( const char *format, va_list args )
{
    return vDbgPrintExWithPrefix("", -1, 0, format, args);
}
