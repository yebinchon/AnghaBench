
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine_info {int name; int is_host; } ;


 int CMP (int ,int ) ;
 int strcasecmp (int ,int ) ;

__attribute__((used)) static int compare_machine_info(const struct machine_info *a, const struct machine_info *b) {
        int r;

        r = CMP(b->is_host, a->is_host);
        if (r != 0)
                return r;

        return strcasecmp(a->name, b->name);
}
