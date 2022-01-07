
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int page; int name; struct TYPE_3__* next; } ;
typedef TYPE_1__ xps_target ;
struct TYPE_4__ {TYPE_1__* target; } ;
typedef TYPE_2__ xps_document ;
typedef int fz_location ;
typedef int fz_document ;
typedef int fz_context ;


 int fz_make_location (int,int) ;
 int strcmp (int ,char const*) ;
 char* strrchr (char const*,char) ;

fz_location
xps_lookup_link_target(fz_context *ctx, fz_document *doc_, const char *target_uri, float *xp, float *yp)
{
 xps_document *doc = (xps_document*)doc_;
 xps_target *target;
 const char *needle = strrchr(target_uri, '#');
 needle = needle ? needle + 1 : target_uri;
 for (target = doc->target; target; target = target->next)
  if (!strcmp(target->name, needle))
   return fz_make_location(0, target->page);
 return fz_make_location(-1, -1);
}
