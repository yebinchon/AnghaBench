
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctx ;
 int fz_recognize_document (int ,char const*) ;

__attribute__((used)) static int document_filter(const char *filename)
{
 return !!fz_recognize_document(ctx, filename);
}
