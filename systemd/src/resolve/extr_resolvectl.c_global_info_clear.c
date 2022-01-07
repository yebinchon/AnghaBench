
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct global_info {int ntas; int domains; int fallback_dns; int dns; int current_dns; } ;


 int free (int ) ;
 int strv_free (int ) ;

__attribute__((used)) static void global_info_clear(struct global_info *p) {
        free(p->current_dns);
        strv_free(p->dns);
        strv_free(p->fallback_dns);
        strv_free(p->domains);
        strv_free(p->ntas);
}
