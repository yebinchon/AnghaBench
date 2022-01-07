
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* html; } ;
typedef TYPE_2__ html_document ;
typedef int fz_document ;
typedef int fz_context ;
struct TYPE_3__ {char* title; } ;


 int FZ_META_FORMAT ;
 int FZ_META_INFO_TITLE ;
 scalar_t__ fz_strlcpy (char*,char*,int) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int
htdoc_lookup_metadata(fz_context *ctx, fz_document *doc_, const char *key, char *buf, int size)
{
 html_document *doc = (html_document*)doc_;
 if (!strcmp(key, FZ_META_FORMAT))
  return (int)fz_strlcpy(buf, "XHTML", size);
 if (!strcmp(key, FZ_META_INFO_TITLE) && doc->html->title)
  return (int)fz_strlcpy(buf, doc->html->title, size);
 return -1;
}
