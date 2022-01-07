
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_document ;
typedef int fz_context ;
struct TYPE_3__ {TYPE_2__* spine; } ;
typedef TYPE_1__ epub_document ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_2__ epub_chapter ;



__attribute__((used)) static int
epub_count_chapters(fz_context *ctx, fz_document *doc_)
{
 epub_document *doc = (epub_document*)doc_;
 epub_chapter *ch;
 int count = 0;
 for (ch = doc->spine; ch; ch = ch->next)
  ++count;
 return count;
}
