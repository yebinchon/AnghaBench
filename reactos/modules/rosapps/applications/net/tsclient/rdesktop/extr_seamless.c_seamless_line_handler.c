
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDPCLIENT ;
typedef int BOOL ;


 int True ;
 int seamless_process_line (int *,char const*,void*) ;
 int warning (char*,char const*) ;

__attribute__((used)) static BOOL
seamless_line_handler(RDPCLIENT * This, const char *line, void *data)
{
 if (!seamless_process_line(This, line, data))
 {
  warning("SeamlessRDP: Invalid request:%s\n", line);
 }
 return True;
}
