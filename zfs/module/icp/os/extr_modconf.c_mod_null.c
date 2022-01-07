
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modlmisc {int dummy; } ;
struct modlinkage {int dummy; } ;



__attribute__((used)) static int
mod_null(struct modlmisc *modl, struct modlinkage *modlp)
{
 return (0);
}
