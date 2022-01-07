
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_document ;
typedef int fz_context ;


 int fz_dirname (char*,char const*,int) ;
 int fz_read_file (int *,char const*) ;
 int * htdoc_open_document_with_buffer (int *,char*,int ) ;

__attribute__((used)) static fz_document *
htdoc_open_document(fz_context *ctx, const char *filename)
{
 char dirname[2048];
 fz_dirname(dirname, filename, sizeof dirname);
 return htdoc_open_document_with_buffer(ctx, dirname, fz_read_file(ctx, filename));
}
