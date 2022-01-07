
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_markdown {int dummy; } ;


 int sd_markdown_free (struct sd_markdown*) ;

__attribute__((used)) static void
rb_redcarpet_md__free(void *markdown)
{
 sd_markdown_free((struct sd_markdown *)markdown);
}
