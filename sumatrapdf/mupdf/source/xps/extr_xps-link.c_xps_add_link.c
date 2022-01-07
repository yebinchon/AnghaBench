
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xps_document ;
typedef int fz_rect ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ fz_link ;
typedef int fz_context ;


 TYPE_1__* fz_new_link (int *,int ,int *,char*) ;

__attribute__((used)) static void
xps_add_link(fz_context *ctx, xps_document *doc, fz_rect area, char *base_uri, char *target_uri, fz_link **head)
{
 fz_link *link = fz_new_link(ctx, area, doc, target_uri);
 link->next = *head;
 *head = link;
}
