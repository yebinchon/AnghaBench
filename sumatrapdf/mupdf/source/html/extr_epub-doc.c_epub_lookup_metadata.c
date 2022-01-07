
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_document ;
typedef int fz_context ;
struct TYPE_2__ {char* dc_title; char* dc_creator; } ;
typedef TYPE_1__ epub_document ;


 int FZ_META_FORMAT ;
 int FZ_META_INFO_AUTHOR ;
 int FZ_META_INFO_TITLE ;
 scalar_t__ fz_strlcpy (char*,char*,int) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int
epub_lookup_metadata(fz_context *ctx, fz_document *doc_, const char *key, char *buf, int size)
{
 epub_document *doc = (epub_document*)doc_;
 if (!strcmp(key, FZ_META_FORMAT))
  return (int)fz_strlcpy(buf, "EPUB", size);
 if (!strcmp(key, FZ_META_INFO_TITLE) && doc->dc_title)
  return (int)fz_strlcpy(buf, doc->dc_title, size);
 if (!strcmp(key, FZ_META_INFO_AUTHOR) && doc->dc_creator)
  return (int)fz_strlcpy(buf, doc->dc_creator, size);
 return -1;
}
